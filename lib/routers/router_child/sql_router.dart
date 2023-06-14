import 'package:fooding/view/login_page/login_page.dart';
import 'package:fooding/view/login_page/login_page_binding.dart';
import 'package:fooding/view/sql_page/sql_page.dart';
import 'package:fooding/view/sql_page/sql_page_binding.dart';
import 'package:get/get.dart';

class sqlRouter {
  static const String Login_Page = '/login';
  static const String Sql_Page = '/sql';

  static List<GetPage> list = [
    GetPage(
      name: Sql_Page,
      page: () => SqlPage(),
      binding: sqlBinding(),
    ),
    GetPage(
      name: Login_Page,
      page: () => loginPage(),
      binding: LoginPageBinding(),
    ),
  ];
}
