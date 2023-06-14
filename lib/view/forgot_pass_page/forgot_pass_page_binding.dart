import 'package:fooding/view/forgot_pass_page/forgot_pass_page_controller.dart';
import 'package:get/get.dart';

class ForgotPassPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<forgotPassPageController>(() => forgotPassPageController());
  }
}
