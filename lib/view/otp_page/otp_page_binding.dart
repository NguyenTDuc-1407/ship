import 'package:fooding/view/otp_page/otp_page_controller.dart';
import 'package:get/get.dart';

class OtpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpPageController>(() => OtpPageController());
  }
}
