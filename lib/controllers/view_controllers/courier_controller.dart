import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/models/models.dart';

class CourierController extends StateNotifier<CourierState> {
  CourierController(this._read) : super(InitialCourierState());

  final Reader _read;

  Future<void> getCouriers() async {
    final couriers = await _read(databaseProvider).getList(COURIER);

    state = SuccessCourierState(
      couriers.map((e) => CourierModel.fromJson(e)).toList(),
    );
  }

  Future<bool> createCourier(CourierModel newCourier) async {
    final oldState = state;
    if (oldState is SuccessCourierState) {
      final id = oldState.couriers.last.id + 1;
      final result = await _read(databaseProvider)
          .create(COURIER, id, newCourier.toDocument());
      if (result) {
        state = SuccessCourierState(
          [...oldState.couriers, newCourier.copyWith(id: id)],
        );
        return true;
      }
    }
    return false;
  }

  Future<bool> editCourier(CourierModel courier) async {
    final oldState = state;
    if (oldState is SuccessCourierState) {
      final result = await _read(databaseProvider)
          .edit(COURIER, courier.id, courier.toDocument());
      if (result) {
        var list = oldState.couriers;

        state = SuccessCourierState(
          list.map((e) {
            if (e.id == courier.id) {
              return courier;
            }
            return e;
          }).toList(),
        );
        return true;
      }
    }
    return false;
  }

  Future<void> deleteCourier(List<CourierModel> models) async {
    final oldState = state;
    if (oldState is SuccessCourierState) {
      var newList = oldState.couriers;
      for (var model in models) {
        final result = await _read(databaseProvider).delete(COURIER, model.id);
        if (result) {
          newList.remove(model);
        }
      }
      state = SuccessCourierState(newList);
    }
  }
}

abstract class CourierState {}

class InitialCourierState extends CourierState {}

class LoadingCourierState extends CourierState {}

class SuccessCourierState extends CourierState {
  SuccessCourierState(
    this.couriers,
  );
  final List<CourierModel> couriers;
}
