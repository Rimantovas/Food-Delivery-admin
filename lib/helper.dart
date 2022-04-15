import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Helper {
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void pop(
    BuildContext context,
  ) {
    Navigator.pop(context);
  }

  static String formatDate(DateTime? date) {
    if (date != null) {
      return DateFormat('yyyy-MM-dd').format(date);
    }
    return '';
  }

  static Widget successToast(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
          Text(
            'Success',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }

  static Widget errorToast(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.close,
            color: Colors.white,
          ),
          Text(
            'Error',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
