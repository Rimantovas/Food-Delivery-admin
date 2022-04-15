import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/courier_controller.dart';
import 'package:food_delivery/models/models.dart';
import 'package:collection/collection.dart';

class ClientController extends StateNotifier<ClientState> {
  ClientController(this._read) : super(InitialClientState());

  final Reader _read;

  Future<void> getClients() async {
    final clients = await _read(databaseProvider).getList(CLIENT);
    final clientAddresss =
        await _read(databaseProvider).getList(CLIENT_ADDRESS);
    state = SuccessClientState(
        clients.map((e) => ClientModel.fromJson(e)).toList(),
        clientAddresss
            .map(
              (e) => ClientAddressModel.fromJson(e),
            )
            .toList());
  }

  Future<void> deleteAddress(ClientAddressModel address) async {
    final oldState = state;
    if (oldState is SuccessClientState) {
      final temp =
          oldState.clientAddresss.firstWhereOrNull((e) => e.id == address.id);
      if (temp != null) {
        final _result = await _read(databaseProvider).delete(
          CLIENT_ADDRESS,
          temp.id,
        );
        if (_result) {
          var list = oldState.clientAddresss;
          list.remove(temp);
          state = SuccessClientState(oldState.clients, list);
        }
      }
    }
  }

  Future<void> deleteClient(List<ClientModel> models) async {
    final oldState = state;
    if (oldState is SuccessClientState) {
      var newList = oldState.clients;
      for (var model in models) {
        final result = await _read(databaseProvider).delete(CLIENT, model.id);
        print('${model.id} == $result');
        if (result) {
          newList.remove(model);
        }
      }
      state = SuccessClientState(
        newList,
        oldState.clientAddresss,
      );
    }
  }

  Future<bool> createClient(
      ClientModel newClient, List<ClientAddressModel> addresses) async {
    final oldState = state;
    if (oldState is SuccessClientState) {
      final id = oldState.clients.last.id + 1;
      final result = await _read(databaseProvider)
          .create(CLIENT, id, newClient.toDocument());

      List<ClientAddressModel> newList = List.from(oldState.clientAddresss);
      var lastId = newList.last.id + 1;
      //-=------------------------------
      for (var address in addresses) {
        final temp = oldState.clientAddresss
            .firstWhereOrNull((element) => element.id == address.id);
        if (address.id == 0) {
          //create
          final addressId = lastId;
          final _result = await _read(databaseProvider)
              .create(CLIENT_ADDRESS, addressId, address.toDocument(id));
          if (_result) {
            newList.add(address.copyWith(
              id: addressId,
              clientId: id,
            ));
            lastId++;
          }
        } else if (temp != null && temp != address) {
          final _result = await _read(databaseProvider)
              .edit(CLIENT_ADDRESS, address.id, address.toDocument(id));
          if (_result) {
            newList[newList.indexOf(temp)] = address;
          }
        }
      }
      //-=------------------------------

      if (result) {
        state = SuccessClientState(
          [...oldState.clients, newClient.copyWith(id: id)],
          newList,
        );
        return true;
      }
    }
    return false;
  }

  Future<bool> editClient(
      ClientModel client, List<ClientAddressModel> addresses) async {
    final oldState = state;
    if (oldState is SuccessClientState) {
      final result = await _read(databaseProvider)
          .edit(CLIENT, client.id, client.toDocument());

      List<ClientAddressModel> newList = List.from(oldState.clientAddresss);
      var lastId = newList.last.id + 1;
      //-=------------------------------
      for (var address in addresses) {
        print(address);

        final temp = oldState.clientAddresss
            .firstWhereOrNull((element) => element.id == address.id);
        if (address.id == 0) {
          //create
          print('create');
          final addressId = lastId;
          final _result = await _read(databaseProvider)
              .create(CLIENT_ADDRESS, addressId, address.toDocument(client.id));
          print('==create: $_result');
          if (_result) {
            newList.add(address.copyWith(id: addressId, clientId: client.id));
            lastId++;
          }
        } else if (temp != null && temp != address) {
          print('update');
          final _result = await _read(databaseProvider)
              .edit(CLIENT_ADDRESS, address.id, address.toDocument(client.id));
          print('==update: $_result');
          if (_result) {
            newList[newList.indexOf(temp)] = address;
          }
        }
      }
      //-=------------------------------
      if (result) {
        var list = oldState.clients;

        state = SuccessClientState(
          list.map((e) {
            if (e.id == client.id) {
              return client;
            }
            return e;
          }).toList(),
          newList,
        );
        return true;
      }
    }
    return false;
  }
}

abstract class ClientState {}

class InitialClientState extends ClientState {}

class LoadingClientState extends ClientState {}

class SuccessClientState extends ClientState {
  SuccessClientState(
    this.clients,
    this.clientAddresss,
  );
  final List<ClientModel> clients;
  final List<ClientAddressModel> clientAddresss;
}
