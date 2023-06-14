import 'package:fooding/view/bottom_bar_page/ca_nhan_page/ca_nhan_page_controller.dart';
import 'package:get/get.dart';

class caNhanPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<caNhanPageController>(() => caNhanPageController());
  }
}