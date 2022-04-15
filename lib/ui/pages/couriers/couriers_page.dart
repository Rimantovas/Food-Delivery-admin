import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/courier_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/courier/courier.dart';
import 'package:food_delivery/ui/pages/couriers/courier_page.dart';

final selectedCouriersProvider =
    StateProvider.autoDispose<List<CourierModel>>((ref) {
  return [];
});

class CouriersPage extends ConsumerStatefulWidget {
  const CouriersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CouriersPageState();
}

class _CouriersPageState extends ConsumerState<CouriersPage> {
  @override
  Widget build(BuildContext context) {
    final courierState = ref.watch(courierProvider);
    final selectedCouriers = ref.watch(selectedCouriersProvider);
    return Scaffold(
      body: Column(
        children: [
          if (courierState is SuccessCourierState) ...[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Couriers data',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: selectedCouriers.isNotEmpty
                          ? () {
                              ref
                                  .read(courierProvider.notifier)
                                  .deleteCourier(selectedCouriers);
                              ref
                                  .read(selectedCouriersProvider.notifier)
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
                            const CourierPage(
                              edit: false,
                            ),
                          ),
                      child: const Text('Create courier'))
                ],
              ),
            ),
            Expanded(
              child: DataTable2(
                onSelectAll: (value) {
                  if (value ?? false) {
                    ref.read(selectedCouriersProvider.notifier).state =
                        List.from(courierState.couriers);
                  } else {
                    ref.read(selectedCouriersProvider.notifier).state = [];
                  }
                },
                columns: const [
                  DataColumn2(label: Text('ID'), size: ColumnSize.S),
                  DataColumn2(label: Text('Name')),
                  DataColumn2(label: Text('Phone number')),
                  DataColumn2(label: Text('Car number plate')),
                ],
                rows: courierState.couriers.map((courier) {
                  return DataRow2(
                      onTap: () => Helper.push(
                            context,
                            CourierPage(
                              edit: true,
                              courier: courier,
                            ),
                          ),
                      onSelectChanged: (value) {
                        if (value ?? false) {
                          ref.read(selectedCouriersProvider.notifier).state = [
                            ...selectedCouriers,
                            courier
                          ];
                        } else {
                          var list = selectedCouriers;
                          list.remove(courier);
                          ref.read(selectedCouriersProvider.notifier).state =
                              List.from(list);
                        }
                      },
                      selected: selectedCouriers.contains(courier),
                      cells: [
                        DataCell(
                          Text(
                            courier.id.toString(),
                          ),
                        ),
                        DataCell(
                          Text(
                            courier.name,
                          ),
                        ),
                        DataCell(
                          Text(
                            courier.phoneNumber,
                          ),
                        ),
                        DataCell(
                          Text(
                            courier.carNumberPlate,
                          ),
                        ),
                      ]);
                }).toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
