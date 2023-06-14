import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page.dart';
import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page_binding.dart';
import 'package:fooding/view/forgot_pass_page/forgot_pass_page.dart';
import 'package:fooding/view/forgot_pass_page/forgot_pass_page_binding.dart';
import 'package:fooding/view/login_page/login_page.dart';
import 'package:fooding/view/login_page/login_page_binding.dart';
import 'package:fooding/view/sql_page/sql_page.dart';
import 'package:fooding/view/sql_page/sql_page_binding.dart';
import 'package:get/get.dart';

class LoginRouter {
  static const String Login_Page = '/login';
  static const String forgot_Pass_Page = '/forgot_Pass_pages';
  static const String after_login_Page = '/after_login_Page';

  static List<GetPage> list = [
    GetPage(
      name: Login_Page,
      page: () => loginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: forgot_Pass_Page,
      page: () => forgotPassPage(),
      binding: ForgotPassPageBinding(),
    ),
    GetPage(
      name: after_login_Page,
      page: () => BottomBarPage(),
      binding: BottomBarPageBinding(),
    )
  ];
}
