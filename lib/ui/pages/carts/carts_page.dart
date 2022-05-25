import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/cart_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/cart/cart.dart';

final dateRangeProvider = StateProvider.autoDispose<DateTimeRange?>((ref) {
  return null;
});

class CartsPage extends ConsumerStatefulWidget {
  const CartsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartsPageState();
}

class _CartsPageState extends ConsumerState<CartsPage> {
  @override
  Widget build(BuildContext context) {
    final cartsState = ref.watch(cartsProvider);
    final dateRange = ref.watch(dateRangeProvider);

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        const headerHeight = 40.0;
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Carts data',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const Spacer(),
                    OutlinedButton(
                        onPressed: () async {
                          final result = await showDateRangePicker(
                            context: context,
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now(),
                          );
                          if (result != null) {
                            ref.read(dateRangeProvider.notifier).state = result;
                          }
                        },
                        child: Text(
                            dateRange == null
                                ? 'Select date range to filter'
                                : '${Helper.formatDate(dateRange.start)} - ${Helper.formatDate(dateRange.end)}',
                            style: Theme.of(context).textTheme.headline3)),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: dateRange != null
                          ? () => ref.read(cartsProvider.notifier).getCarts(
                              from: dateRange.start, to: dateRange.end)
                          : null,
                      child: const Text('Filter'),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 4,
                    height: headerHeight,
                    child: const Center(
                      child: Text('Cart id'),
                    ),
                  ),
                  SizedBox(
                    width: width / 4,
                    height: headerHeight,
                    child: const Center(
                      child: Text('Date'),
                    ),
                  ),
                  SizedBox(
                    width: width / 4,
                    height: headerHeight,
                    child: const Center(
                      child: Text('Products'),
                    ),
                  ),
                  SizedBox(
                    width: width / 4,
                    height: headerHeight,
                    child: const Center(
                      child: Text('Something'),
                    ),
                  ),
                ],
              ),
              const Divider(),
              //----------------------------------
              if (cartsState is SuccessCartState) ...[
                ...cartsState.grouped.entries
                    .map((e) => CartTile(
                        carts: e.value,
                        width: width,
                        headerHeight: headerHeight))
                    .toList(),
                if (cartsState.carts.isEmpty)
                  Center(
                    child: Text(
                      'The list is empty',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  )
              ]
            ],
          ),
        );
      }),
    );
  }
}

class CartTile extends StatelessWidget {
  const CartTile({
    Key? key,
    required this.carts,
    required this.width,
    required this.headerHeight,
  }) : super(key: key);
  final List<CartVM> carts;
  final double width;
  final double headerHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(carts.first.clientName),
          tileColor: ColorsTheme.primaryColor,
        ),
        ...carts.map(
          (e) => Row(
            children: [
              SizedBox(
                width: width / 4,
                height: headerHeight,
                child: Center(
                  child: Text(e.id.toString()),
                ),
              ),
              SizedBox(
                width: width / 4,
                height: headerHeight,
                child: Center(
                  child: Text(Helper.formatDate(e.dateCreated)),
                ),
              ),
              SizedBox(
                width: width / 4,
                height: headerHeight,
                child: Center(
                  child: Text(e.totalProductsCount.toInt().toString()),
                ),
              ),
              SizedBox(
                width: width / 4,
                height: headerHeight,
                child: Center(
                  child:
                      Text('${e.totalProductsPrice.toStringAsPrecision(3)} €'),
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        Row(
          children: [
            SizedBox(
              width: width / 4,
              height: headerHeight,
            ),
            SizedBox(
              width: width / 4,
              height: headerHeight,
              child: const Center(
                child: Text('Totals:'),
              ),
            ),
            SizedBox(
              width: width / 4,
              height: headerHeight,
              child: Center(
                child: Text(carts
                    .fold<int>(
                        0,
                        (prev, element) =>
                            prev + element.totalProductsCount.toInt())
                    .toString()),
              ),
            ),
            SizedBox(
              width: width / 4,
              height: headerHeight,
              child: Center(
                child: Text(
                    '${carts.fold<double>(0, (prev, element) => prev + element.totalProductsPrice).toStringAsPrecision(3)} €'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: headerHeight,
        ),
      ],
    );
  }
}
