import 'package:fooding/view/bottom_bar_page/don_hang_page/don_hoan_page/don_hoan_page_controller.dart';
import 'package:get/get.dart';

class DonHoanPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DonHoanPageController>(() => DonHoanPageController());
  }
}
