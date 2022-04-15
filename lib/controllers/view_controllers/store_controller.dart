import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/models/models.dart';
import 'package:collection/collection.dart';

class StoreController extends StateNotifier<StoreState> {
  StoreController(this._read) : super(InitialStoreState());

  final Reader _read;

  Future<void> getStores() async {
    final stores = await _read(databaseProvider).getList(STORE);
    final stocks = await _read(databaseProvider).getList(STOCK);
    final chains = await _read(databaseProvider).getList(CHAIN);
    final addresses = await _read(databaseProvider).getList(STORE_ADDRESS);

    state = SuccessStoreState(
      stores.map((e) => StoreModel.fromJson(e)).toList(),
      stocks
          .map(
            (e) => StockModel.fromJson(e),
          )
          .toList(),
      chains
          .map(
            (e) => ChainModel.fromJson(e),
          )
          .toList(),
      addresses
          .map(
            (e) => StoreAddressModel.fromJson(e),
          )
          .toList(),
    );
  }

  String? storeAddress(int storeAddressId) {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      return oldState.addresses
          .firstWhereOrNull((element) => element.id == storeAddressId)
          ?.fullAddressName;
    }
    return null;
  }

  String? chain(int chainId) {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      return oldState.chains
          .firstWhereOrNull((element) => element.id == chainId)
          ?.name;
    }
    return null;
  }

  Future<void> deleteStock(StockModel stock) async {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      final temp = oldState.stocks.firstWhereOrNull((e) => e.id == stock.id);
      if (temp != null) {
        final _result = await _read(databaseProvider).delete(
          STOCK,
          temp.id,
        );
        if (_result) {
          var list = oldState.stocks;
          list.remove(temp);
          state = SuccessStoreState(
            oldState.stores,
            list,
            oldState.chains,
            oldState.addresses,
          );
        }
      }
    }
  }

  Future<void> deleteStore(List<StoreModel> models) async {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      var newList = oldState.stores;
      for (var model in models) {
        final result = await _read(databaseProvider).delete(STORE, model.id);
        if (result) {
          newList.remove(model);
        }
      }
      state = SuccessStoreState(
          newList, oldState.stocks, oldState.chains, oldState.addresses);
    }
  }

  Future<bool> createStore(StoreModel newStore, List<StockModel> stocks) async {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      final id = oldState.stores.last.id + 1;
      final result = await _read(databaseProvider)
          .create(STORE, id, newStore.toDocument());
      List<StockModel> newList = List.from(oldState.stocks);
      var lastId = newList.last.id + 1;
      //-=------------------------------
      for (var stock in stocks) {
        final temp = oldState.stocks
            .firstWhereOrNull((element) => element.id == stock.id);
        if (stock.id == 0) {
          //create
          final stockId = lastId;
          final _result = await _read(databaseProvider)
              .create(STOCK, stockId, stock.toDocument(id));
          if (_result) {
            newList.add(stock.copyWith(
              id: stockId,
              storeId: id,
            ));
            lastId++;
          }
        } else if (temp != null && temp != stock) {
          final _result = await _read(databaseProvider)
              .edit(STOCK, stock.id, stock.toDocument(id));
          if (_result) {
            newList[newList.indexOf(temp)] = stock;
          }
        }
      }
      //-=------------------------------

      if (result) {
        state = SuccessStoreState(
          [...oldState.stores, newStore.copyWith(id: id)],
          newList,
          oldState.chains,
          oldState.addresses,
        );
        return true;
      }
    }
    return false;
  }

  Future<bool> editStore(StoreModel store, List<StockModel> stocks) async {
    final oldState = state;
    if (oldState is SuccessStoreState) {
      final result = await _read(databaseProvider)
          .edit(STORE, store.id, store.toDocument());

      List<StockModel> newList = List.from(oldState.stocks);
      var lastId = newList.last.id + 1;
      //-=------------------------------
      for (var stock in stocks) {
        final temp = oldState.stocks
            .firstWhereOrNull((element) => element.id == stock.id);
        if (stock.id == 0) {
          final stockId = lastId;
          final _result = await _read(databaseProvider)
              .create(STOCK, stockId, stock.toDocument(store.id));
          if (_result) {
            newList.add(stock.copyWith(id: stockId, storeId: store.id));
            lastId++;
          }
        } else if (temp != null && temp != stock) {
          final _result = await _read(databaseProvider)
              .edit(STOCK, stock.id, stock.toDocument(store.id));
          if (_result) {
            newList[newList.indexOf(temp)] = stock;
          }
        }
      }
      //-=------------------------------
      if (result) {
        var list = oldState.stores;

        state = SuccessStoreState(
          list.map((e) {
            if (e.id == store.id) {
              return store;
            }
            return e;
          }).toList(),
          newList,
          oldState.chains,
          oldState.addresses,
        );
        return true;
      }
    }
    return false;
  }
}

abstract class StoreState {}

class InitialStoreState extends StoreState {}

class LoadingStoreState extends StoreState {}

class SuccessStoreState extends StoreState {
  SuccessStoreState(
    this.stores,
    this.stocks,
    this.chains,
    this.addresses,
  );
  final List<StoreModel> stores;
  final List<ChainModel> chains;
  final List<StoreAddressModel> addresses;
  final List<StockModel> stocks;
}
