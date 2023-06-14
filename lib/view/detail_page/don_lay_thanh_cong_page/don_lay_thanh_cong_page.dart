import 'package:flutter/material.dart';
import 'package:fooding/view/detail_page/don_lay_thanh_cong_page/don_lay_thanh_cong_page_controller.dart';
import 'package:get/get.dart';

class donLayThanhCongPage extends GetView<donLayThanhCongPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: donLayThanhCongPageController(),
      builder: (controller) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 4,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(249, 241, 206, 159),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(360),
                                  bottomRight: Radius.circular(36000),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 80),
                            height: screenHeight / 7,
                            width: screenHeight / 3.5,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 243, 174, 83),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(360),
                                  bottomRight: Radius.circular(360)),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, top: 30, bottom: 5),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(225, 225, 226, 1),
                                  borderRadius: BorderRadius.circular(360)),
                              child: Icon(Icons.arrow_back_sharp),
                            ),
                            onTap: () {
                              controller.onBack();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset('assets/images/success.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Đơn hàng đã lấy thành công',
                      style: TextStyle(
                          color: Color.fromRGBO(70, 70, 71, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                width: screenWidth / 1.2,
                height: screenHeight / 20,
                child: StartButton(context)),
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
        controller.onHomePage();
      },
      child: const Text(
        'Hoàn thành',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
