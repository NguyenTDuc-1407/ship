import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fooding/view/otp_page/otp_page_controller.dart';

class OtpPage extends GetView<OtpPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: OtpPageController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 235, 232, 232),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight / 5,
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
                          Center(
                            child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'XÁC THỰC OTP',
                                  style: TextStyle(fontSize: 30),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth / 1.05,
                  height: screenHeight / 3.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Nhập mã OTP đã được gửi về qua số điện\n",
                            style: TextStyle(
                              color: Color.fromRGBO(70, 70, 71, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "thoại của bạn",
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 71, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: screenHeight / 10,
                            width: screenWidth / 7,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight / 10,
                            width: screenWidth / 7,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight / 10,
                            width: screenWidth / 7,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight / 10,
                            width: screenWidth / 7,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(228, 161, 27, 1)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: screenWidth / 1.2,
                        height: screenHeight / 20,
                        child: StartButton(context),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: const Text(
                        'Thời gian còn lại: ',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 137, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: const Text('0:38s',
                          style: TextStyle(
                            color: Color.fromRGBO(128, 128, 137, 1),
                          )),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight / 2.6,
                  child: Image.asset(
                    'assets/images/otp1.png',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text('Bạn chưa nhận được mã? ',
                          style: TextStyle(
                            color: Color.fromRGBO(164, 162, 162, 1),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text('Gửi lại',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                          )),
                    ),
                  ],
                ),
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
        controller.pageLogin();
      },
      child: const Text(
        'Đăng nhập',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
