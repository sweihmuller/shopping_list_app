import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/dummy_items.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(groceryItems[index].name),
        leading: Container(
          width: 24,
          height: 24,
          color: groceryItems[index].category.color,
        ),
        trailing: Text(groceryItems[index].quantity.toString()),
      ),
    );
  }
}
