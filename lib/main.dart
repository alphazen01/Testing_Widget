import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_testing2/filtering_list/category_list_screen.dart';
import 'package:widget_testing2/search_items/bindings/search_items_binding.dart';
import 'package:widget_testing2/search_items/screens/search_items_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SearchItemsScreen(),
      initialBinding: SearchItemsBindings(),
    );
  }
}
