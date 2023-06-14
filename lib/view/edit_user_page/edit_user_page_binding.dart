import 'package:fooding/view/edit_user_page/edit_user_page_controlller.dart';
import 'package:get/get.dart';

class editUserPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<editUserPageController>(() => editUserPageController());
  }
}
