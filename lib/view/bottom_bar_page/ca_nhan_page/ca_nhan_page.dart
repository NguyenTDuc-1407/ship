import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/bottom_bar_page/ca_nhan_page/ca_nhan_page_controller.dart';
import 'package:get/get.dart';

class caNhanPage extends GetView<caNhanPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: caNhanPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.3,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                          Image.asset('assets/images/avata3.png'),
                          IconButton(
                              onPressed: () {
                                controller.onNextPage();
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                    ),
                    const Text('Văn A'),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.7,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 40, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 2),
                              child: const Text('Họ và tên')),
                          const Expanded(child: Text('Nguyễn Văn A')),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 1.8),
                              child: const Text('Ngày sinh')),
                          const Expanded(child: Text('1/10/1998')),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 1.5),
                              child: const Text('Giới tính')),
                          const Expanded(child: Text('Nam')),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 2.5),
                              child: const Text('Email')),
                          const Expanded(child: Text('tuongnhi110@gmail.com')),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 2.1),
                              child: const Text('Số điện thoại')),
                          const Expanded(child: Text('0778905541')),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: screenWidth / 1.6),
                              child: const Text('Địa chỉ')),
                          const Expanded(child: Text('Đà Nẵng')),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
