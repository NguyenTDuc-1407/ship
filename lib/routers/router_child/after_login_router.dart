import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page.dart';
import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page_binding.dart';
import 'package:fooding/view/detail_page/don_lay_page/don_lay_page.dart';
import 'package:fooding/view/detail_page/don_lay_page/don_lay_page_binding.dart';
import 'package:get/get.dart';

class afterLoginRouter {
  static const String after_login_Page = '/after_login_Page';
  static const String detail_don_lay_Page = '/detail_don_lay_Page';

  static List<GetPage> list = [
    GetPage(
      name: after_login_Page,
      page: () => BottomBarPage(),
      binding: BottomBarPageBinding(),
    ),
    GetPage(
      name: detail_don_lay_Page,
      page: () => donLayPage(),
      binding: donLayPageBinding(),
    )
  ];
}
