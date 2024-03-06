import 'package:flutter/material.dart';
import 'package:widget_testing2/filtering_list/product_model.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  String selectedCategory = "men"; // Initially selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productTab.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = productTab[index].name;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    color: selectedCategory == productTab[index].name
                        ? Colors.blue // Change color based on selection
                        : Colors.white,
                    child: Text(productTab[index].name),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                if (selectedCategory == "men") {
                  if (productList[index].men.isNotEmpty) {
                    return _buildProductItem(productList[index].men);
                  }
                } else if (selectedCategory == "women") {
                  if (productList[index].women.isNotEmpty) {
                    return _buildProductItem(productList[index].women);
                  }
                } else if (selectedCategory == "child") {
                  if (productList[index].child.isNotEmpty) {
                    return _buildProductItem(productList[index].child);
                  }
                }
                return Container(); // Return an empty container if no match found
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(String productName) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Text(productName),
    );
  }
}
