import 'package:flutter/material.dart';

class CustomViewWidget extends StatelessWidget {
  String label;
  String count;
  Color? color = Colors.white;
  CustomViewWidget({
    this.color,
    required this.count,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(label, selectionColor: Colors.white),
          Text(count, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
