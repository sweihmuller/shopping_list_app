import 'package:flutter/material.dart';

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
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.lightBlue),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 35)),
                Expanded(
                  child: const Text('Milk', textAlign: TextAlign.justify),
                ),
                Expanded(
                  child: const Text(
                    '1',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 35)),
                Expanded(
                  child: const Text(
                    'Bananas',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: const Text(
                    '5',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.deepOrange),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 35)),
                Expanded(
                  child: const Text(
                    'Beef steak',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: const Text(
                    '1',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
