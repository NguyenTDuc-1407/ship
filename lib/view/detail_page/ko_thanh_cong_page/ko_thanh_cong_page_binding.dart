import 'package:fooding/view/detail_page/ko_thanh_cong_page/ko_thanh_cong_page_controller.dart';
import 'package:get/get.dart';

class koThanhCongPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<koThanhCongPageController>(() => koThanhCongPageController());
  }
}
