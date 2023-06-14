import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/detail_page/don_lay_page/don_lay_page_controller.dart';
import 'package:get/get.dart';

class donLayPage extends GetView<donLayPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: donLayPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 232, 232),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
          title: const Text('Chi tiết đơn hàng'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                controller.onBack();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 5),
                child: Text(controller.donLayPage),
              ),
              Container(
                height: screenHeight / 8,
                width: screenWidth,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.donLayPagesss.length,
                  itemBuilder: (context, index) => Container(
                    key: ValueKey(controller.donLayPagesss[index]["id"]),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Image.asset(controller.donLayPagessss),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              controller.donLayPagesss[index]
                                                      ['name']
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Text(
                                              controller.donLayPagesss[index]
                                                      ['phone']
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 15,
                                      left: 15,
                                    ),
                                    child: Text('Địa chỉ   -'),
                                  ),
                                  Text(
                                    controller.donLayPagesss[index]['Điểm lấy']
                                        .toString(),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 5),
                child: Text('THÔNG TIN ĐƠN HÀNG'),
              ),
              Container(
                height: screenHeight / 3.5,
                width: screenWidth,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.donLayPagesss.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(controller.donLayPagesss[index]["id"]),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                height: screenHeight / 20,
                                color: Color.fromRGBO(255, 252, 227, 1),
                                child: ListTile(
                                  leading:
                                      Image.asset('assets/icons/Vector.png'),
                                  title: Text(
                                    controller.donLayPages,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15, top: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: 15,
                                        ),
                                        child: Text('Mã đơn hàng   -'),
                                      ),
                                      Text(
                                        controller.donLayPagesss[index]
                                                ['#12340189']
                                            .toString(),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(right: 10, top: 20),
                                  height: screenHeight * 0.03,
                                  width: screenWidth * 0.3,
                                  child: GoogleButton(context),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 15,
                                      left: 15,
                                    ),
                                    child: Text('Ngày lấy dự kiến   -'),
                                  ),
                                  Text(
                                    controller.donLayPagesss[index]['day']
                                        .toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 15,
                                      left: 15,
                                    ),
                                    child: Text('Điểm lấy   -'),
                                  ),
                                  Text(
                                    controller.donLayPagesss[index]['day']
                                        .toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 15,
                                      left: 15,
                                    ),
                                    child: Text('Điểm đến   -'),
                                  ),
                                  Text(
                                    controller.donLayPagesss[index]['day']
                                        .toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 15,
                                      left: 15,
                                    ),
                                    child: Text('Khoảng cách    -'),
                                  ),
                                  Text(
                                    controller.donLayPagesss[index]['Điểm lấy']
                                        .toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 5),
                child: Text('THÔNG TIN SẢN PHẨM'),
              ),
              Container(
                height: screenHeight / 4,
                width: screenWidth,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.donLayPagesss.length,
                  itemBuilder: (context, index) => Container(
                    key: ValueKey(controller.donLayPagesss[index]["id"]),
                    color: Colors.white,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15,
                                      ),
                                      child: Text('Mã đơn hàng   -'),
                                    ),
                                    Text(
                                      controller.donLayPagesss[index]
                                              ['#12340189']
                                          .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15,
                                        left: 15,
                                      ),
                                      child: Text('Ngày lấy dự kiến   -'),
                                    ),
                                    Text(
                                      controller.donLayPagesss[index]['day']
                                          .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15,
                                        left: 15,
                                      ),
                                      child: Text('Điểm lấy   -'),
                                    ),
                                    Text(
                                      controller.donLayPagesss[index]['day']
                                          .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15,
                                        left: 15,
                                      ),
                                      child: Text('Điểm đến   -'),
                                    ),
                                    Text(
                                      controller.donLayPagesss[index]['day']
                                          .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15,
                                        left: 15,
                                      ),
                                      child: Text('Khoảng cách    -'),
                                    ),
                                    Text(
                                      controller.donLayPagesss[index]
                                              ['Điểm lấy']
                                          .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: screenWidth / 1.2,
                  height: screenHeight / 20,
                  child: StartButton(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget StartButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(228, 161, 27, 1),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        elevation: MaterialStateProperty.all(0),

        // textStyle: textStyle,
      ),
      onPressed: () {
        controller.onNextPage();
      },
      child: Text(
        controller.donLayPagess,
        style:const TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget GoogleButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Color.fromRGBO(228, 161, 27, 1),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        elevation: MaterialStateProperty.all(0),

        // textStyle: textStyle,
      ),
      onPressed: () {},
      child: const Text(
        'Chỉ đường',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
