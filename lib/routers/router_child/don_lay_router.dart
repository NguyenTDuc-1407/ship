import 'package:fooding/view/detail_page/don_lay_page/don_lay_page.dart';
import 'package:fooding/view/detail_page/don_lay_page/don_lay_page_binding.dart';
import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page.dart';
import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page_binding.dart';
import 'package:get/get.dart';

class detailDonLayRouter {
  static const String detail_don_lay_Page = '/detail_don_lay_Page';
  static const String location_don_lay_Page = '/location_don_lay_Page';

  static List<GetPage> list = [
    GetPage(
      name: detail_don_lay_Page,
      page: () => donLayPage(),
      binding: donLayPageBinding(),
    ),
    GetPage(
      name: location_don_lay_Page,
      page: () => locationDonLayPage(),
      binding: locationDonLayPageBinding(),
    ),
  ];
}
