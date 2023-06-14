import 'package:fooding/routers/router_child/forgot_pass_router.dart';
import 'package:fooding/routers/router_child/login_router.dart';
import 'package:fooding/view/login_page/login_page.dart';
import 'package:get/get.dart';

class forgotPassPageController extends GetxController {
  void onBack() {
    Get.back();
  }

  void otpPage() {
    Get.toNamed(forgotPassRouter.otp_Page);
  }
}
