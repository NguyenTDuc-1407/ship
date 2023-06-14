import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/bottom_bar_page/bottom_bar/bottom_bar_page_controller.dart';
import 'package:fooding/view/bottom_bar_page/ca_nhan_page/ca_nhan_page.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/app_bar/don_hang_page.dart';
import 'package:fooding/view/bottom_bar_page/thong_ke_page/thong_ke_page.dart';
import 'package:get/get.dart';

class BottomBarPage extends GetView<bottomBarPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: bottomBarPageController(),
      builder: (controller) => Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            DonHangPage(),
            ThongKePage(),
            caNhanPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              _bottomNavigationBarItem(
                iconAction: 'assets/icons/box1.png',
                icon: 'assets/icons/box.png',
                label: 'Đơn hàng',
              ),
              _bottomNavigationBarItem(
                iconAction: 'assets/icons/thongke1.png',
                icon: 'assets/icons/thongke.png',
                label: 'Thống kê',
              ),
              _bottomNavigationBarItem(
                iconAction: 'assets/icons/person.png',
                icon: 'assets/icons/person1.png',
                label: 'Trang cá nhân',
              ),
            ]),
      ),
    );
  }

  _bottomNavigationBarItem(
      {required String icon,
      required String label,
      required String iconAction}) {
    return BottomNavigationBarItem(
        icon: Image.asset(icon),
        label: label,
        activeIcon: Image.asset(iconAction));
  }
}
