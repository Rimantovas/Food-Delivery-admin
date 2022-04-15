import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/ui/pages/clients/clients_page.dart';
import 'package:food_delivery/ui/pages/couriers/couriers_page.dart';
import 'package:food_delivery/ui/pages/products/products_page.dart';
import 'package:food_delivery/ui/pages/stores/stores_page.dart';
import 'package:food_delivery/ui/shared/sider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    await ref.read(databaseProvider).init();
    //ref.read(cartProvider)
    ref.read(productProvider.notifier).getProducts();
    ref.read(clientProvider.notifier).getClients();
    ref.read(courierProvider.notifier).getCouriers();
    ref.read(storeProvider.notifier).getStores();
    //ref.read(productProvider)
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(pageProvider, (previous, next) {
      if (previous != next) {
        controller.animateTo(next as int);
      }
    });
    return Scaffold(
      body: Row(
        children: [
          const Sider(),
          Expanded(
            child: TabBarView(controller: controller, children: const [
              CouriersPage(),
              ProductsPage(),
              ClientsPage(),
              StoresPage(),
            ]),
          ),
        ],
      ),
    );
  }
}
