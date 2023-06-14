import 'package:fooding/view/forgot_pass_page/forgot_pass_page.dart';
import 'package:fooding/view/forgot_pass_page/forgot_pass_page_binding.dart';
import 'package:fooding/view/login_page/login_page.dart';
import 'package:fooding/view/login_page/login_page_binding.dart';
import 'package:fooding/view/otp_page/otp_page.dart';
import 'package:fooding/view/otp_page/otp_page_binding.dart';
import 'package:get/get.dart';

class forgotPassRouter {
  static const String forgot_Pass_Page = '/forgot_Pass_pages';
  static const String otp_Page = '/otp_pages';

  static List<GetPage> list = [
    GetPage(
      name: forgot_Pass_Page,
      page: () => forgotPassPage(),
      binding: ForgotPassPageBinding(),
    ),
    GetPage(
      name: otp_Page,
      page: () => OtpPage(),
      binding: OtpPageBinding(),
    ),
  ];
}
