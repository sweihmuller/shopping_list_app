import 'package:flutter/material.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({
    super.key,
    required this.name,
    required this.quantity,
    required this.color,
  });

  final String name;
  final int quantity;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.0,
          height: 20.0,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        ),
        const Padding(padding: EdgeInsets.only(right: 35)),
        Expanded(child: Text(name, textAlign: TextAlign.justify)),
        Expanded(
          child: Text(
            quantity.toString(),
            textAlign: TextAlign.end,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
