import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_testing2/custom_cliper/custom_cliper.dart';
import 'package:widget_testing2/filtering_list/category_list_screen.dart';
import 'package:widget_testing2/google_signin/google_signin_page.dart';
import 'package:widget_testing2/passing_multiple%20_items_fromlist/screen1.dart';
import 'package:widget_testing2/search_items/bindings/search_items_binding.dart';
import 'package:widget_testing2/search_items/screens/search_items_screen.dart';
import 'package:widget_testing2/wilpopscope/wilpopscope_page.dart';

void main() async {
  runApp(MyApp());
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
      // home: SearchItemsScreen(),
      // initialBinding: SearchItemsBindings(),
      // home: CustomCliper(),
      // home: HomeScreen(),
      home: GoogleSignInPage(),
    );
  }
}
