import 'package:fooding/routers/router_child/after_login_router.dart';
import 'package:fooding/routers/router_child/login_router.dart';
import 'package:get/get.dart';

class donLayThanhCongPageController extends GetxController {
  onHomePage() {
    Get.offAllNamed(afterLoginRouter.after_login_Page);
  }

  onBack() {
    Get.back();
  }
}
