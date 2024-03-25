import 'package:flutter/material.dart';
import 'package:widget_testing2/passing_multiple%20_items_fromlist/screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index List'),
      ),
      body: ListView.builder(
        itemCount: 5, // Number of index items
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Index $index'),
            onTap: () {
              // Navigate to the next page with selected index
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NextPage(selectedIndex: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
