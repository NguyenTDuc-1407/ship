import 'package:fooding/view/detail_page/ko_thanh_cong_page/ko_thanh_cong_page.dart';
import 'package:fooding/view/detail_page/ko_thanh_cong_page/ko_thanh_cong_page_binding.dart';
import 'package:get/get.dart';

class koThanhCongRouter {
  static const String ko_thanh_cong_Page = '/ko_thanh_cong_Page';

  static List<GetPage> list = [
    GetPage(
      name: ko_thanh_cong_Page,
      page: () => koThanhCongPage(),
      binding: koThanhCongPageBinding(),
    ),
  ];
}
