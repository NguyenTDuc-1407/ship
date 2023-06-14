import 'package:fooding/view/detail_page/don_lay_thanh_cong_page/don_lay_thanh_cong_page_controller.dart';
import 'package:get/get.dart';

class donLayThanhCongPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<donLayThanhCongPageController>(
        () => donLayThanhCongPageController());
  }
}
