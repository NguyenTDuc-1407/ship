import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page_controller.dart';
import 'package:get/get.dart';

class BottomBarPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<bottomBarPageController>(() => bottomBarPageController());
  }
}
