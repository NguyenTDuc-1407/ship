import 'package:fooding/view/detail_page/don_lay_thanh_cong_page/don_lay_thanh_cong_page.dart';
import 'package:fooding/view/detail_page/don_lay_thanh_cong_page/don_lay_thanh_cong_page_binding.dart';
import 'package:fooding/view/detail_page/ko_thanh_cong_page/ko_thanh_cong_page.dart';
import 'package:fooding/view/detail_page/ko_thanh_cong_page/ko_thanh_cong_page_binding.dart';
import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page.dart';
import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page_binding.dart';
import 'package:get/get.dart';

class xacNhanRouter {
  static const String xac_nhan_Page = '/xac_nhan_Page';
  static const String thanh_cong_Page = '/thanh_cong_Page';
    static const String that_bai_Page = '/that_bai_Page';


  static List<GetPage> list = [
    GetPage(
      name: xac_nhan_Page,
      page: () => xacNhanLayHangPage(),
      binding: xacNhanLayHangPageBinding(),
    ),
        GetPage(
      name: thanh_cong_Page,
      page: () => donLayThanhCongPage(),
      binding: donLayThanhCongPageBinding(),
    ),
        GetPage(
        name: thanh_cong_Page,
        page: () => koThanhCongPage(),
        binding: koThanhCongPageBinding())
    
  ];
}
