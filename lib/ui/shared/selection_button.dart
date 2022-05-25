import 'package:flutter/material.dart';
import 'package:food_delivery/colors.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({
    Key? key,
    required this.isSelected,
    required this.label,
    required this.onTap,
    this.isSpecial = false,
  }) : super(key: key);
  final bool isSelected;
  final String label;
  final VoidCallback onTap;
  final bool isSpecial;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? isSpecial
                ? ColorsTheme.specialColor
                : ColorsTheme.primaryColor
            : null,
        border: Border.all(
          color: isSelected
              ? Colors.transparent
              : isSpecial
                  ? ColorsTheme.specialColor
                  : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
              child: Text(
            label,
            style: Theme.of(context).textTheme.headline3,
          )),
        ),
      ),
    );
  }
}
