import 'package:flutter/material.dart';
import 'package:shopping_list_app/Widgets/shopping_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Groceries')),
      body: ShoppingListItem(),
    );
  }
}
