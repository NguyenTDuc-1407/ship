import 'package:fooding/routers/router_child/edit_user.dart';
import 'package:get/get.dart';

class caNhanPageController extends GetxController {
  onNextPage() {
    Get.toNamed(editUserRouter.edit_user_Page);
  }
}
