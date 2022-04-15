import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/product_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/models.dart';
import 'package:food_delivery/ui/pages/products/product_page.dart';

final selectedProductsProvider =
    StateProvider.autoDispose<List<ProductVM>>((ref) {
  return [];
});

class ProductsPage extends ConsumerStatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productProvider);
    final selectedProducts = ref.watch(selectedProductsProvider);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Products data',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: selectedProducts.isNotEmpty
                        ? () {
                            ref
                                .read(productProvider.notifier)
                                .deleteProduct(selectedProducts);

                            ref.read(selectedProductsProvider.notifier).state =
                                [];
                          }
                        : null,
                    child: const Text('Delete selected')),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () =>
                        Helper.push(context, const ProductPage(edit: false)),
                    child: const Text('Create product')),
              ],
            ),
          ),
          if (productState is SuccessProductState)
            Expanded(
              child: DataTable2(
                onSelectAll: (value) {
                  if (value ?? false) {
                    ref.read(selectedProductsProvider.notifier).state =
                        List.from(productState.productsVM);
                  } else {
                    ref.read(selectedProductsProvider.notifier).state = [];
                  }
                },
                columns: const [
                  DataColumn2(
                    label: Text('ID'),
                    size: ColumnSize.S,
                  ),
                  DataColumn2(
                    label: Text('Name'),
                  ),
                  DataColumn2(
                    label: Text('Image'),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(label: Text('Description')),
                  DataColumn2(label: Text('Unit incrementation')),
                  DataColumn2(label: Text('Date created')),
                  DataColumn2(label: Text('Price')),
                  DataColumn2(label: Text('Unit')),
                  DataColumn2(label: Text('Type')),
                  DataColumn2(label: Text('Producer')),
                ],
                rows: productState.productsVM.map((product) {
                  return DataRow2(
                      onTap: () => Helper.push(
                            context,
                            ProductPage(
                              edit: true,
                              product: productState.products.firstWhere(
                                  (element) => element.id == product.id),
                            ),
                          ),
                      onSelectChanged: (value) {
                        if (value ?? false) {
                          ref.read(selectedProductsProvider.notifier).state = [
                            ...selectedProducts,
                            product
                          ];
                        } else {
                          var list = selectedProducts;
                          list.remove(product);
                          ref.read(selectedProductsProvider.notifier).state =
                              List.from(list);
                        }
                      },
                      selected: selectedProducts.contains(product),
                      cells: [
                        DataCell(
                          Text(
                            product.id.toString(),
                          ),
                        ),
                        DataCell(
                          Text(
                            product.name,
                          ),
                        ),
                        DataCell(
                          Image.network(product.imageUrl),
                        ),
                        DataCell(
                          Text(
                            product.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        DataCell(
                          Text(
                            product.unitIncrementation.toString(),
                          ),
                        ),
                        DataCell(
                          Text(
                            Helper.formatDate(product.dateCreated),
                          ),
                        ),
                        DataCell(
                          Text(
                            '${product.pricePerIncrementation}€',
                          ),
                        ),
                        DataCell(
                          Text(
                            product.unit,
                          ),
                        ),
                        DataCell(
                          Text(
                            product.type,
                          ),
                        ),
                        DataCell(
                          Text(
                            product.producer,
                          ),
                        ),
                      ]);
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
