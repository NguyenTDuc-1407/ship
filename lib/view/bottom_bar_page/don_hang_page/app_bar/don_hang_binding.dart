import 'package:fooding/view/bottom_bar_page/don_hang_page/app_bar/don_hang_controller.dart';
import 'package:get/get.dart';

class DonHangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DonHangController>(() => DonHangController());
  }
}
