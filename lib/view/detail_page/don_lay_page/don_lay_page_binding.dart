import 'package:fooding/view/detail_page/don_lay_page/don_lay_page_controller.dart';
import 'package:get/get.dart';

class donLayPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<donLayPageController>(() => donLayPageController());
  }
}
