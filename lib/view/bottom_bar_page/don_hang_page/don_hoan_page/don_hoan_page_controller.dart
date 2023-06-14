import 'package:fooding/routers/router_child/after_login_router.dart';
import 'package:get/get.dart';

class DonHoanPageController extends GetxController {
  List<Map<String, dynamic>> donHoan = [
    {
      "id": 1,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵngaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    },
    {
      "id": 2,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng"
    },
  ];
  List<Map<String, dynamic>> donHoanDetail = [
    {
      "id": 1,
      "name": "New Shop ",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng",
      "phone": 0384305023
    },
  ];
  bool visible = false;
  onNextPage() {
    Get.toNamed(afterLoginRouter.detail_don_lay_Page, arguments: [
      'THÔNG TIN NGƯỜI NHẬN',
      'Đang chờ hoàn',
      'Bắt đầu Hoàn',
      donHoanDetail,
      'assets/images/avata1.png',
      'assets/images/avvata4.png',
      'assets/images/box2.png',
      'Đơn hàng cần hoàn',
      '2 kg',
      'Bằng chứng hoàn hàng\n',
      'Xác nhận hoàn hàng',
      visible,
    ]);
  }
}
