import 'package:flutter/cupertino.dart';
import 'package:fooding/routers/router_child/sql_router.dart';
import 'package:get/get.dart';

class sqlPageController extends GetxController {
  List imageList = [
    {"id": 1, "image": "assets/images/page1.png"},
    {"id": 2, "image": "assets/images/page12.png"},
    {"id": 3, "image": "assets/images/page13.png"},
  ];
  PageController pageController = PageController();
  int currentIndex = 0;

  void onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  void onNext() async {
    if (currentIndex == imageList.length - 1) {
      Get.toNamed(sqlRouter.Login_Page);
    } else {
      currentIndex = currentIndex + 1;
      await pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }
}
