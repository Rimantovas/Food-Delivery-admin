import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/view_controllers/cart_controller.dart';
import 'package:food_delivery/controllers/view_controllers/client_controller.dart';
import 'package:food_delivery/controllers/view_controllers/courier_controller.dart';
import 'package:food_delivery/controllers/view_controllers/product_controller.dart';
import 'package:food_delivery/controllers/view_controllers/store_controller.dart';
import 'package:food_delivery/repositories/database.dart';

//state providers -----------------------------------------------
final pageProvider = StateProvider<int>((ref) {
  return 0;
});

final clientProvider =
    StateNotifierProvider<ClientController, ClientState>((ref) {
  return ClientController(ref.read);
});

final productProvider =
    StateNotifierProvider<ProductController, ProductState>((ref) {
  return ProductController(ref.read);
});

final courierProvider =
    StateNotifierProvider<CourierController, CourierState>((ref) {
  return CourierController(ref.read);
});

final storeProvider = StateNotifierProvider<StoreController, StoreState>((ref) {
  return StoreController(ref.read);
});

final cartsProvider = StateNotifierProvider<CartController, CartState>((ref) {
  return CartController(ref.read);
});

//---------------------------------------------------------------

final databaseProvider = Provider<DatabaseRepository>((ref) {
  return DatabaseRepository();
});
