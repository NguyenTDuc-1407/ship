import 'package:fooding/view/bottom_bar_page/thong_ke_page/thong_ke_page_controller.dart';
import 'package:get/get.dart';

class thongKePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<thongKeController>(() => thongKeController());
  }
}