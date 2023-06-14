import 'package:fooding/view/sql_page/sql_page_controller.dart';
import 'package:fooding/view/starts_page/starts_page_controller.dart';
import 'package:get/get.dart';

class sqlBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => sqlPageController());
  }
}
