import 'package:fooding/view/forgot_pass_page/forgot_pass_page.dart';
import 'package:fooding/view/forgot_pass_page/forgot_pass_page_binding.dart';
import 'package:fooding/view/otp_page/otp_page.dart';
import 'package:fooding/view/otp_page/otp_page_binding.dart';
import 'package:get/get.dart';

class otpRouter {
  static const String otp_Page = '/otp_pages';

  static List<GetPage> list = [
    GetPage(
      name: otp_Page,
      page: () => OtpPage(),
      binding: OtpPageBinding(),
    ),
  ];
}
