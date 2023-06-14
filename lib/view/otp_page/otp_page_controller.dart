import 'package:fooding/routers/router_child/login_router.dart';
import 'package:fooding/routers/router_child/sql_router.dart';
import 'package:fooding/view/login_page/login_page.dart';
import 'package:get/get.dart';

class OtpPageController extends GetxController {
  pageLogin() {
    Get.toNamed(sqlRouter.Login_Page);
  }

  void onBack() {
    Get.back();
  }
}
