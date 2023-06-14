import 'package:fooding/view/starts_page/starts_page_controller.dart';
import 'package:get/get.dart';

class startsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => startsPageController());
  }
}
