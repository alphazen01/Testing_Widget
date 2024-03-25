import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final int selectedIndex;

  NextPage({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    // Sample data representing items for each index
    List<List<String>> indexItems = [
      ['Item 1 for Index 0', 'Item 2 for Index 0', 'Item 3 for Index 0'],
      ['Item 1 for Index 1', 'Item 2 for Index 1', 'Item 3 for Index 1'],
      ['Item 1 for Index 2', 'Item 2 for Index 2', 'Item 3 for Index 2'],
      ['Item 1 for Index 3', 'Item 2 for Index 3', 'Item 3 for Index 3'],
      ['Item 1 for Index 4', 'Item 2 for Index 4', 'Item 3 for Index 4'],
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Index $selectedIndex Items'),
      ),
      body: ListView.builder(
        itemCount: indexItems[selectedIndex].length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(indexItems[selectedIndex][index]),
          );
        },
      ),
    );
  }
}
