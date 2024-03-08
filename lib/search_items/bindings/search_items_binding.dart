import 'package:get/get.dart';
import 'package:widget_testing2/search_items/controller/search_controller.dart';

class SearchItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchItemsController());
  }
}
