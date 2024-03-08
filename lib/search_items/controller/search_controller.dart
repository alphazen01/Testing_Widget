import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_testing2/search_items/models/items_model.dart';

class SearchItemsController extends GetxController {
  final TextEditingController editingController = TextEditingController();
  final RxList<ItemsModel> items = RxList<ItemsModel>();

  @override
  void onInit() {
    items.assignAll(searchItemsList);
    super.onInit();
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      items.assignAll(searchItemsList);
      return;
    }
    items.assignAll(searchItemsList.where((item) {
      return item.men.toLowerCase().contains(query.toLowerCase()) ||
          item.women.toLowerCase().contains(query.toLowerCase()) ||
          item.child.toLowerCase().contains(query.toLowerCase());
    }).toList());
  }
}
