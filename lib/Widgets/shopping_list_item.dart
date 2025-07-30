import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class ShoppingListItem extends StatefulWidget {
  const ShoppingListItem({super.key, required this.groceryItem});

  final List<GroceryItem> groceryItem;
  @override
  State<ShoppingListItem> createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  void _removeItem(GroceryItem item) {
    setState(() {
      widget.groceryItem.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.groceryItem.isEmpty
        ? const Center(child: Text('No items added yet.'))
        : ListView.builder(
            itemCount: widget.groceryItem.length,
            itemBuilder: (ctx, index) => Dismissible(
              onDismissed: (direction) {
                _removeItem(widget.groceryItem[index]);
              },
              key: ValueKey(widget.groceryItem[index].id),
              child: ListTile(
                title: Text(widget.groceryItem[index].name),
                leading: Container(
                  width: 24,
                  height: 24,
                  color: widget.groceryItem[index].category.color,
                ),
                trailing: Text(widget.groceryItem[index].quantity.toString()),
              ),
            ),
          );
  }
}
