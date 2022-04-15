import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/models/models.dart';

class ProductController extends StateNotifier<ProductState> {
  ProductController(this._read) : super(InitialProductState());

  final Reader _read;

  Future<void> getProducts() async {
    final products = await _read(databaseProvider).getList(PRODUCT);
    final productsVM = await _read(databaseProvider).getProductViewList();
    final units = await _read(databaseProvider).getList(UNIT_OF_MEASURE);
    final producers = await _read(databaseProvider).getList(PRODUCER);
    final types = await _read(databaseProvider).getList(PRODUCT_TYPE);

    state = SuccessProductState(
      products.map((e) => ProductModel.fromJson(e)).toList(),
      productsVM,
      units.map((e) => UnitOfMeasureModel.fromJson(e)).toList(),
      producers.map((e) => ProducerModel.fromJson(e)).toList(),
      types.map((e) => ProductTypeModel.fromJson(e)).toList(),
    );
  }

  Future<bool> createProduct(ProductModel newProduct) async {
    final oldState = state;
    if (oldState is SuccessProductState) {
      final id = oldState.products.last.id + 1;
      final result = await _read(databaseProvider)
          .create(PRODUCT, id, newProduct.toDocument());
      if (result) {
        state = SuccessProductState(
          [...oldState.products, newProduct.copyWith(id: id)],
          [...oldState.productsVM, toVM(newProduct.copyWith(id: id))],
          oldState.units,
          oldState.producers,
          oldState.types,
        );
        return true;
      }
    }
    return false;
  }

  Future<void> deleteProduct(List<ProductVM> models) async {
    final oldState = state;
    if (oldState is SuccessProductState) {
      var newList = oldState.products;
      var newListVM = oldState.productsVM;
      for (var model in models) {
        final result = await _read(databaseProvider).delete(PRODUCT, model.id);
        print('${model.id} == $result');
        if (result) {
          newListVM.remove(model);
          final product =
              newList.firstWhere((element) => element.id == model.id);
          newList.remove(product);
        }
      }
      state = SuccessProductState(newList, newListVM, oldState.units,
          oldState.producers, oldState.types);
    }
  }

  ProductVM toVM(ProductModel product) {
    final oldState = state;
    if (oldState is SuccessProductState) {
      final unit =
          oldState.units.firstWhere((element) => element.id == product.unitId);
      final producer = oldState.producers
          .firstWhere((element) => element.id == product.producerId);
      final type =
          oldState.types.firstWhere((element) => element.id == product.typeId);

      return ProductVM.fromModels(product, unit, producer, type);
    }
    return const ProductVM();
  }

  Future<bool> editProduct(ProductModel product) async {
    final oldState = state;
    if (oldState is SuccessProductState) {
      final result = await _read(databaseProvider)
          .edit(PRODUCT, product.id, product.toDocument());
      if (result) {
        var list = oldState.products;
        var listVM = oldState.productsVM;

        state = SuccessProductState(
          list.map((e) {
            if (e.id == product.id) {
              return product;
            }
            return e;
          }).toList(),
          listVM.map((e) {
            if (e.id == product.id) {
              return toVM(product);
            }
            return e;
          }).toList(),
          oldState.units,
          oldState.producers,
          oldState.types,
        );
        return true;
      }
    }
    return false;
  }
}

abstract class ProductState {}

class InitialProductState extends ProductState {}

class LoadingProductState extends ProductState {}

class SuccessProductState extends ProductState {
  SuccessProductState(
    this.products,
    this.productsVM,
    this.units,
    this.producers,
    this.types,
  );
  final List<ProductVM> productsVM;
  final List<ProductModel> products;
  final List<ProducerModel> producers;
  final List<UnitOfMeasureModel> units;
  final List<ProductTypeModel> types;
}
