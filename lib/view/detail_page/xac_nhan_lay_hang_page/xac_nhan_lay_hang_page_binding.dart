import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page_controller.dart';
import 'package:get/get.dart';

class xacNhanLayHangPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<xacNhanLayHangPageController>(
        () => xacNhanLayHangPageController());
  }
}
