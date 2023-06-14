import 'package:fooding/view/sql_page/sql_page.dart';
import 'package:fooding/view/sql_page/sql_page_binding.dart';
import 'package:fooding/view/starts_page/starts_page.dart';
import 'package:fooding/view/starts_page/starts_page_binding.dart';
import 'package:get/get.dart';

class startsRouter {
  static const String Starts_Page = '/';
  static const String Sql_Page = '/sql';
  static List<GetPage> list = [
    GetPage(
      name: Starts_Page,
      page: () => startsPage(),
      binding: startsBinding(),
    ),
    GetPage(
      name: Sql_Page,
      page: () => SqlPage(),
      binding: sqlBinding(),
    ),
  ];
}
