import 'package:fooding/view/bottom_bar_page/don_hang_page/don_lay_page/don_lay_page_controller.dart';
import 'package:get/get.dart';

class DonLayPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DonLayController>(() => DonLayController());
  }
}
