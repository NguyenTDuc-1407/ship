import 'package:fooding/routers/router_child/after_login_router.dart';
import 'package:get/get.dart';

class DonPhatPageController extends GetxController {
  List<Map<String, dynamic>> donPhat = [
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
  bool visible = true;

  List<Map<String, dynamic>> donPhatDeatil = [
    {
      "id": 1,
      "name": "Mai Hương ",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng",
      "phone": 0384305023
    },
  ];
  onNextPage() {
    Get.toNamed(afterLoginRouter.detail_don_lay_Page, arguments: [
      'THÔNG TIN NGƯỜI NHẬN',
      'Đang chờ phát',
      'Bắt đầu phát',
      donPhatDeatil,
      'assets/images/avata1.png',
      'assets/images/avata5.png',
      'assets/images/box3.png',
      'Thu tiền của khách',
      '500.000đ',
      'Bằng chứng giao hàng\n',
      'Thành công',
      visible,
    ]);
  }
}
