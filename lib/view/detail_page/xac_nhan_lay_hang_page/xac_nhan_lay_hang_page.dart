import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/detail_page/xac_nhan_lay_hang_page/xac_nhan_lay_hang_page_controller.dart';
import 'package:get/get.dart';

class xacNhanLayHangPage extends GetView<xacNhanLayHangPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: xacNhanLayHangPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 232, 232),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
          title: const Text('Xác nhận lấy hàng'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                controller.onBack();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: screenHeight / 20, left: 20, right: 20),
                          child: Image.asset(controller.anh),
                        ),
                        Container(
                          height: screenHeight / 8,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 252, 227, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.only(
                              top: 5, left: 20, bottom: 5, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                controller.textXacNhan,
                                style: const TextStyle(
                                  color: Color.fromRGBO(70, 70, 71, 1),
                                ),
                              ),
                              Text(
                                controller.textXacNhans,
                                style: const TextStyle(
                                  color: Color.fromRGBO(228, 161, 27, 1),
                                ),
                              ),
                              Visibility(
                                visible: controller.checkShow,
                                child: Container(
                                  width: screenWidth,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(
                                              164, 162, 162, 0.5)),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: controller.checkShow,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                                'Phương thức thanh toán:'),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            child: const Text('Tiền mặt'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: screenHeight / 15, left: 20, bottom: 5),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: controller.textXacNhanss,
                              style: const TextStyle(
                                color: Color.fromRGBO(70, 70, 71, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: "Chụp ảnh làm bằng chứng lấy hàng\n",
                                  style: TextStyle(
                                      color: Color.fromRGBO(70, 70, 71, 1)),
                                ),
                                TextSpan(
                                  text: "(Không bắt buộc)",
                                  style: TextStyle(
                                      color: Color.fromRGBO(70, 70, 71, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: screenHeight / 20, left: 20, bottom: 5),
                          child: Image.asset('assets/images/add_image.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: controller.checkShow,
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 30, right: 10),
                      width: screenWidth / 2.2,
                      height: screenHeight / 20,
                      child: ButtonUn(context)),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    width: screenWidth / 2.2,
                    height: screenHeight / 20,
                    child: StartButton(context)),
              ],
            ),
          ],
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
        controller.textXacNhansss,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }

  //reponsiButton
  Widget ButtonUn(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Color.fromRGBO(228, 161, 27, 1))),
        ),
        elevation: MaterialStateProperty.all(0),

        // textStyle: textStyle,
      ),
      onPressed: () {
        controller.nextPage();
      },
      child: const Text(
        'Không thành công',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Color.fromRGBO(228, 161, 27, 1),
        ),
      ),
    );
  }
}
