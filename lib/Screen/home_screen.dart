import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_list_app/Widgets/new_item.dart';
import 'package:shopping_list_app/Widgets/shopping_list_item.dart';
import 'package:shopping_list_app/data/categories.dart';
import 'package:shopping_list_app/models/grocery_item.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GroceryItem> _groceryItems = [];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    _loadItems();
    _isLoading = false;
  }

  void _loadItems() async {
    final url = Uri.https(
      'flutter-prep-b0750-default-rtdb.firebaseio.com',
      'shopping-list.json',
    );
    final response = await http.get(url);
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadItems = [];
    for (final item in listData.entries) {
      final category = categories.entries.firstWhere(
        (categoryItem) => categoryItem.value.name == item.value['category'],
      );
      loadItems.add(
        GroceryItem(
          id: item.key,
          name: item.value['name'],
          quantity: item.value['quantity'],
          category: category.value,
        ),
      );
    }
    setState(() {
      _groceryItems = loadItems;
      _isLoading = false;
    });
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(builder: (context) => const NewItem()),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [IconButton(onPressed: _addItem, icon: const Icon(Icons.add))],
      ),
      body: _isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : ShoppingListItem(groceryItem: _groceryItems),
    );
  }
}
