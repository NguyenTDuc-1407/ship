import 'package:flutter/material.dart';

import 'package:fooding/view/forgot_pass_page/forgot_pass_page_controller.dart';
import 'package:get/get.dart';

class forgotPassPage extends GetView<forgotPassPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: forgotPassPageController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 235, 232, 232),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  // fit: StackFit.expand,
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 80),
                        child: Image.asset(
                          'assets/images/page3.png',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight / 2,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: const Text(
                          'Quên mật khẩu',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(228, 161, 27, 0.5)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenHeight / 40),
                        child: const Text(
                          'Nhập số điện thoại đã đăng ký của bạn vào bên dưới',
                          style: TextStyle(
                            color: Color.fromRGBO(70, 70, 71, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenHeight / 40),
                        padding: const EdgeInsets.only(left: 10),
                        width: screenWidth / 1.2,
                        height: screenHeight / 20,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 246, 247, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const TextField(
                          style:
                              TextStyle(color: Color.fromRGBO(228, 161, 27, 1)),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone),
                            hintText: 'So dien thoai',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: screenWidth / 1.2,
                        height: screenHeight / 20,
                        child: StartButton(context),
                      ),
                      SizedBox(
                        height: screenHeight / 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: const Text(
                              'Nhớ mật khẩu?',
                              style: TextStyle(
                                color: Color.fromRGBO(164, 162, 162, 1),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      )
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
        controller.otpPage();
      },
      child: const Text(
        'Nhận mã',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
