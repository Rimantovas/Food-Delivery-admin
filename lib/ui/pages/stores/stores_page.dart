import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/store_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/store/store.dart';
import 'package:food_delivery/ui/pages/stores/store_page.dart';

final selectedStoresProvider =
    StateProvider.autoDispose<List<StoreModel>>((ref) {
  return [];
});

class StoresPage extends ConsumerStatefulWidget {
  const StoresPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoresPageState();
}

class _StoresPageState extends ConsumerState<StoresPage> {
  @override
  Widget build(BuildContext context) {
    final storeState = ref.watch(storeProvider);
    final selectedStores = ref.watch(selectedStoresProvider);

    return Scaffold(
      body: storeState is SuccessStoreState
          ? Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Stores data',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: selectedStores.isNotEmpty
                              ? () {
                                  ref
                                      .read(storeProvider.notifier)
                                      .deleteStore(selectedStores);
                                  ref
                                      .read(selectedStoresProvider.notifier)
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
                              StorePage(
                                edit: false,
                                addresses: storeState.addresses,
                                chains: storeState.chains,
                                stock: storeState.stocks,
                              )),
                          child: const Text('Create store'))
                    ],
                  ),
                ),
                Expanded(
                  child: DataTable2(
                    onSelectAll: (value) {
                      if (value ?? false) {
                        ref.read(selectedStoresProvider.notifier).state =
                            List.from(storeState.stores);
                      } else {
                        ref.read(selectedStoresProvider.notifier).state = [];
                      }
                    },
                    columns: const [
                      DataColumn2(label: Text('ID'), size: ColumnSize.S),
                      DataColumn2(label: Text('Name')),
                      DataColumn2(label: Text('Store address')),
                      DataColumn2(label: Text('Chain')),
                    ],
                    rows: storeState.stores.map((store) {
                      return DataRow2(
                          onTap: () => Helper.push(
                                context,
                                StorePage(
                                  edit: true,
                                  store: store,
                                  addresses: storeState.addresses,
                                  chains: storeState.chains,
                                  stock: storeState.stocks,
                                ),
                              ),
                          onSelectChanged: (value) {
                            if (value ?? false) {
                              ref.read(selectedStoresProvider.notifier).state =
                                  [...selectedStores, store];
                            } else {
                              var list = selectedStores;
                              list.remove(store);
                              ref.read(selectedStoresProvider.notifier).state =
                                  List.from(list);
                            }
                          },
                          selected: selectedStores.contains(store),
                          cells: [
                            DataCell(
                              Text(
                                store.id.toString(),
                              ),
                            ),
                            DataCell(
                              Text(
                                store.name,
                              ),
                            ),
                            DataCell(
                              Text(
                                ref
                                        .read(storeProvider.notifier)
                                        .storeAddress(store.storeAddressId) ??
                                    '',
                              ),
                            ),
                            DataCell(
                              Text(
                                ref
                                        .read(storeProvider.notifier)
                                        .chain(store.chainId) ??
                                    '',
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
