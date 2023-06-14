import 'package:fooding/routers/router_child/ko_thanh_cong_router.dart';
import 'package:fooding/routers/router_child/xac_nhan_router.dart';
import 'package:get/get.dart';

class xacNhanLayHangPageController extends GetxController {
  onNextPage() {
    Get.toNamed(xacNhanRouter.thanh_cong_Page);
  }

  String anh = Get.arguments[0];
  String textXacNhan = Get.arguments[1];
  String textXacNhans = Get.arguments[2];
  String textXacNhanss = Get.arguments[3];
  String textXacNhansss = Get.arguments[4];
  var checkShow = Get.arguments[5];
  nextPage() {
    Get.toNamed(koThanhCongRouter.ko_thanh_cong_Page);
  }

  onBack() {
    Get.back();
  }
}
