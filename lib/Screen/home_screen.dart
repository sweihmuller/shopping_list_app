import 'package:flutter/material.dart';
import 'package:shopping_list_app/Widgets/shopping_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Groceries')),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ShoppingListItem(
              name: "Milk",
              quantity: 1,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ShoppingListItem(
              name: "Bananas",
              quantity: 5,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ShoppingListItem(
              name: "Beef stake",
              quantity: 1,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
