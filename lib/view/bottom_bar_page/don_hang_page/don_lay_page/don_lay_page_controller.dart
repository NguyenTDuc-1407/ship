import 'package:fooding/routers/router_child/after_login_router.dart';
import 'package:get/get.dart';

class DonLayController extends GetxController {
  List<Map<String, dynamic>> donLay = [
    {
      "id": 1,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng"
    },
    {
      "id": 2,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng"
    },
    {
      "id": 3,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng"
    },
    {
      "id": 4,
      "name": "New Shop 2",
      "#12340189": "Quần áo",
      "day": "08:00 - 8/12/2022",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng"
    },
  ];
  List<Map<String, dynamic>> donLayDetail = [
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
      'THÔNG TIN CỬA HÀNG',
      'Đang chờ lấy',
      'Nhận đơn này',
      donLayDetail,
      'assets/images/avata2.png',
      'assets/images/avvata4.png',
      'assets/images/box.png',
      'Đơn hàng cần lấy',
      '2 kg',
      'Bằng chứng lấy hàng\n',
      'Xác nhận lấy hàng',
      visible,
    ]);
  }
}
