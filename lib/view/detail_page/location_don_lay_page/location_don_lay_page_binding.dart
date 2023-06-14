import 'package:fooding/view/detail_page/don_lay_page/don_lay_page_controller.dart';
import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page_controller.dart';
import 'package:get/get.dart';

class locationDonLayPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<locationDonLayPageController>(
        () => locationDonLayPageController());
  }
}
