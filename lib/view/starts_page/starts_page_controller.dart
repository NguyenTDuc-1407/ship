import 'dart:async';

import 'package:fooding/routers/router_child/sql_router.dart';
import 'package:fooding/routers/router_child/starts_router.dart';
import 'package:get/get.dart';

class startsPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(sqlRouter.Sql_Page);
    });
  }
}
