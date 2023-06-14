import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page.dart';
import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page_binding.dart';
import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page.dart';
import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page_binding.dart';
import 'package:get/get.dart';

class locationRouter {
  static const String xac_nhan_Page = '/xac_nhan_Page';
  static const String location_don_lay_Page = '/location_don_lay_Page';

  static List<GetPage> list = [
    GetPage(
      name: location_don_lay_Page,
      page: () => locationDonLayPage(),
      binding: locationDonLayPageBinding(),
    ),
    GetPage(
      name: xac_nhan_Page,
      page: () => xacNhanLayHangPage(),
      binding: xacNhanLayHangPageBinding(),
    ),
  ];
}
