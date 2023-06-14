import 'package:flutter/material.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/app_bar/don_hang_controller.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/don_hoan_page/don_hoan_page.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/don_lay_page/don_lay_page.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/don_phat_page.dart/don_phat_page.dart';
import 'package:get/get.dart';

class DonHangPage extends GetView<DonHangController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: GetBuilder(
        init: DonHangController(),
        builder: (controller) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 232, 232),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
            title: const Text('Đơn hàng'),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight / 20,
                  width: screenWidth,
                  child: const TabBar(
                    indicatorColor: Color.fromRGBO(228, 161, 27, 1),
                    labelColor: Color.fromRGBO(228, 161, 27, 1),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Đơn lấy'),
                      Tab(text: 'Đơn phát'),
                      Tab(text: 'Đơn hoàn')
                    ],
                  ),
                ),
                Container(
                  height: screenHeight / 1.25,
                  width: screenWidth,
                  child: TabBarView(
                    children: [
                      DonLayPage(),
                      DonPhatPage(),
                      DonHoanPage(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
