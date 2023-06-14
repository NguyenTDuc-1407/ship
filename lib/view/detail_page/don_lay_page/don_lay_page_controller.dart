import 'package:fooding/routers/router_child/don_lay_router.dart';
import 'package:get/get.dart';

class donLayPageController extends GetxController {
  List<Map<String, dynamic>> donLay = [
    {
      "id": 1,
      "name": "New Shop ",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng",
      "phone": 0384305023
    },
  ];
  List<Map<String, dynamic>> donLays = [
    {
      "id": 1,
      "name": "Mai Hương ",
      "Điểm lấy": "273 Nguyễn Công Trứ, Đà Nẵng",
      "phone": 0384305023
    },
  ];
  onNextPage() {
    Get.toNamed(
      detailDonLayRouter.location_don_lay_Page,
      arguments: [
        donLayPagesss,
        anhShop,
        anh,
        textXacNhan,
        textXacNhans,
        textXacNhanss,
        textXacNhansss,
        checkShow,
      ],
    );
  }

  onBack() {
    Get.back();
  }

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   donLayPage = Get.arguments[0];
  // }

  String donLayPage = Get.arguments[0];
  String donLayPages = Get.arguments[1];
  String donLayPagess = Get.arguments[2];
  var donLayPagesss = Get.arguments[3];
  String donLayPagessss = Get.arguments[4];
  String anhShop = Get.arguments[5];
  String anh = Get.arguments[6];
  String textXacNhan = Get.arguments[7];
  String textXacNhans = Get.arguments[8];
  String textXacNhanss = Get.arguments[9];
  String textXacNhansss = Get.arguments[10];
  var checkShow = Get.arguments[11];
}
