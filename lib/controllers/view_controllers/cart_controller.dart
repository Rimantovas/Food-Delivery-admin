import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/models/models.dart';

class CartController extends StateNotifier<CartState> {
  CartController(this._read) : super(InitialCartState());

  final Reader _read;

  Future<void> getCarts({DateTime? from, DateTime? to}) async {
    final carts = await _read(databaseProvider).getCarts(from, to);
    print(carts);
    state = SuccessCartState(carts, groupedCarts(carts));
  }

  Map<String, List<CartVM>> groupedCarts(List<CartVM> carts) {
    var grouped = <String, List<CartVM>>{};
    for (final cart in carts) {
      final key = cart.clientName;
      if (!grouped.containsKey(key)) {
        grouped[key] = <CartVM>[];
      }
      (grouped[key] as List<CartVM>).add(cart);
    }
    return grouped;
  }
}

abstract class CartState {}

class InitialCartState extends CartState {}

class LoadingCartState extends CartState {}

class SuccessCartState extends CartState {
  SuccessCartState(
    this.carts,
    this.grouped,
  );
  final List<CartVM> carts;
  final Map<String, List<CartVM>> grouped;
}
