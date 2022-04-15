import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/client_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/client/client.dart';
import 'package:food_delivery/ui/pages/clients/client_page.dart';

final selectedClientsProvider =
    StateProvider.autoDispose<List<ClientModel>>((ref) {
  return [];
});

class ClientsPage extends ConsumerStatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClientsPageState();
}

class _ClientsPageState extends ConsumerState<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    final clientState = ref.watch(clientProvider);
    final selectedClients = ref.watch(selectedClientsProvider);

    return Scaffold(
      body: clientState is SuccessClientState
          ? Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Clients data',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: selectedClients.isNotEmpty
                              ? () {
                                  ref
                                      .read(clientProvider.notifier)
                                      .deleteClient(selectedClients);
                                  ref
                                      .read(selectedClientsProvider.notifier)
                                      .state = [];
                                }
                              : null,
                          child: const Text('Delete selected')),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          onPressed: () => Helper.push(
                              context,
                              ClientPage(
                                edit: false,
                                addresses: clientState.clientAddresss,
                              )),
                          child: const Text('Create client'))
                    ],
                  ),
                ),
                Expanded(
                  child: DataTable2(
                    onSelectAll: (value) {
                      if (value ?? false) {
                        ref.read(selectedClientsProvider.notifier).state =
                            List.from(clientState.clients);
                      } else {
                        ref.read(selectedClientsProvider.notifier).state = [];
                      }
                    },
                    columns: const [
                      DataColumn2(label: Text('ID'), size: ColumnSize.S),
                      DataColumn2(label: Text('Name')),
                      DataColumn2(label: Text('Phone number')),
                      DataColumn2(label: Text('Email')),
                      DataColumn2(label: Text('Date created')),
                    ],
                    rows: clientState.clients.map((client) {
                      return DataRow2(
                          onTap: () => Helper.push(
                                context,
                                ClientPage(
                                  edit: true,
                                  client: client,
                                  addresses: clientState.clientAddresss,
                                ),
                              ),
                          onSelectChanged: (value) {
                            if (value ?? false) {
                              ref.read(selectedClientsProvider.notifier).state =
                                  [...selectedClients, client];
                            } else {
                              var list = selectedClients;
                              list.remove(client);
                              ref.read(selectedClientsProvider.notifier).state =
                                  List.from(list);
                            }
                          },
                          selected: selectedClients.contains(client),
                          cells: [
                            DataCell(
                              Text(
                                client.id.toString(),
                              ),
                            ),
                            DataCell(
                              Text(
                                client.name,
                              ),
                            ),
                            DataCell(
                              Text(
                                client.phoneNumber,
                              ),
                            ),
                            DataCell(
                              Text(
                                client.email,
                              ),
                            ),
                            DataCell(
                              Text(
                                Helper.formatDate(client.dateCreated),
                              ),
                            ),
                          ]);
                    }).toList(),
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
