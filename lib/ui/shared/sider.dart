import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/ui/shared/selection_button.dart';

class Sider extends ConsumerWidget {
  const Sider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(pageProvider);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      color: Colors.grey[900],
      width: MediaQuery.of(context).size.width * .2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: RichText(
                text: TextSpan(
              children: [
                TextSpan(
                  text: 'Admin',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextSpan(
                  text: 'Panel',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsTheme.primaryColor,
                      shadows: [
                        const BoxShadow(
                          color: ColorsTheme.primaryColor,
                          blurRadius: 15,
                          spreadRadius: 15,
                        ),
                      ]),
                ),
              ],
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectionButton(
            isSelected: index == 0,
            label: 'Couriers',
            onTap: () => ref.read(pageProvider.notifier).state = 0,
          ),
          SelectionButton(
            isSelected: index == 1,
            label: 'Products',
            onTap: () => ref.read(pageProvider.notifier).state = 1,
          ),
          SelectionButton(
            isSelected: index == 2,
            label: 'Clients',
            onTap: () => ref.read(pageProvider.notifier).state = 2,
          ),
          SelectionButton(
            isSelected: index == 3,
            label: 'Stores',
            onTap: () => ref.read(pageProvider.notifier).state = 3,
          ),
          const Divider(),
          SelectionButton(
            isSelected: index == 4,
            label: 'Carts',
            isSpecial: true,
            onTap: () => ref.read(pageProvider.notifier).state = 4,
          ),
        ],
      ),
    );
  }
}
