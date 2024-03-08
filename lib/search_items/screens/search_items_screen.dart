import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_testing2/search_items/models/items_model.dart';
import 'package:widget_testing2/search_items/controller/search_controller.dart';

class SearchItemsScreen extends GetView<SearchItemsController> {
  const SearchItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  controller.filterSearchResults(value);
                },
                controller: controller.editingController,
                decoration: const InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    final item = controller.items[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(item.men),
                          onTap: () {
                            // Set the selected item in the TextField
                            controller.editingController.text = item.men;
                          },
                        ),
                        ListTile(
                          title: Text(item.women),
                          onTap: () {
                            // Set the selected item in the TextField
                            controller.editingController.text = item.women;
                          },
                        ),
                        ListTile(
                          title: Text(item.child),
                          onTap: () {
                            // Set the selected item in the TextField
                            controller.editingController.text = item.child;
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
