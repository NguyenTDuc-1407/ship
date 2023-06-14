import 'package:fooding/routers/router_child/xac_nhan_router.dart';
import 'package:get/get.dart';

class locationDonLayPageController extends GetxController {
  onNextPage() {
    Get.toNamed(
      xacNhanRouter.xac_nhan_Page,
      arguments: [
        anh,
        textXacNhan,
        textXacNhans,
        textXacNhanss,
        textXacNhansss,
        checkShow,
      ],
    );
  }

  onBack() {
    Get.back();
  }

  var donLayPagesss = Get.arguments[0];
  String anhShop = Get.arguments[1];
  String anh = Get.arguments[2];
  String textXacNhan = Get.arguments[3];
  String textXacNhans = Get.arguments[4];
  String textXacNhanss = Get.arguments[5];
  String textXacNhansss = Get.arguments[6];
  var checkShow = Get.arguments[7];
}
