import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/bottom_bar_page/thong_ke_page/thong_ke_page_controller.dart';
import 'package:get/get.dart';

class ThongKePage extends GetView<thongKeController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: thongKeController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 232, 232),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
            title: const Text('Thống kê'),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Bắt đầu"),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: screenWidth / 2.5,
                          height: screenHeight / 25,
                          padding: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '11/11/2021',
                              suffixIcon: Icon(Icons.date_range),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Kết thúc"),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: screenWidth / 2.5,
                          height: screenHeight / 25,
                          padding: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.datetime,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.date_range),
                              hintText: '11/11/2021',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(10),
                    height: screenHeight / 5,
                    width: screenWidth / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Đơn đã lấy'),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset('assets/images/delivery.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('100'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 35),
                    padding: const EdgeInsets.all(10),
                    height: screenHeight / 5,
                    width: screenWidth / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Đơn đã lấy'),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset('assets/images/package.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('80'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(10),
                    height: screenHeight / 5,
                    width: screenWidth / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Đơn đã lấy'),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset('assets/images/returnbox.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('10'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
