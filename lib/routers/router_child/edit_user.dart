import 'package:fooding/view/edit_user_page/edit_user_page.dart';
import 'package:fooding/view/edit_user_page/edit_user_page_binding.dart';
import 'package:get/get.dart';

class editUserRouter {
  static const String edit_user_Page = '/edit_user_Page';

  static List<GetPage> list = [
    GetPage(
      name: edit_user_Page,
      page: () => editUserPage(),
      binding: editUserPageBinding(),
    ),
  ];
}
