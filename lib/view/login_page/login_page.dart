import 'package:flutter/material.dart';
import 'package:fooding/view/login_page/login_page_controller.dart';
import 'package:get/get.dart';

class loginPage extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // double heightKeyBoard = MediaQuery.of(context).viewInsets.bottom;
    // final size = MediaQuery.of(context).size;
    return GetBuilder(
      init: LoginPageController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 232, 232),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
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
                                  color: const Color.fromRGBO(225, 225, 226, 1),
                                  borderRadius: BorderRadius.circular(360)),
                              child: const Icon(Icons.arrow_back_sharp),
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
                        margin: const EdgeInsets.only(top: 80),
                        child: Image.asset(
                          'assets/images/page2.png',
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
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: const Text(
                          'Đăng nhập với số điện thoại',
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
                        margin: EdgeInsets.only(top: screenHeight / 50),
                        padding: const EdgeInsets.only(left: 9),
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
                            iconColor: Color.fromRGBO(228, 161, 27, 1),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.phone,
                            ),
                            hintText: 'So dien thoai',
                          ),
                        ),
                      ),
                      Obx(
                        () => Container(
                          margin: EdgeInsets.only(
                              top: screenHeight / 50,
                              bottom: screenHeight / 50),
                          width: screenWidth / 1.2,
                          height: screenHeight / 20,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(246, 246, 247, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            obscureText: controller.inputPassword.value,
                            style: const TextStyle(
                                color: Color.fromRGBO(228, 161, 27, 1)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.lock,
                              ),
                              hintText: 'Mật khẩu',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.hideInputPassword();
                                },
                                icon: const Icon(
                                  Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Obx(
                                () => Checkbox(
                                  activeColor:
                                      const Color.fromRGBO(228, 161, 27, 1),
                                  value: controller.checkBox.value,
                                  onChanged: (value) {
                                    controller.actionCheckBox();
                                  },
                                ),
                              ),
                              const Text(
                                'Ghi nhớ mật khẩu',
                                style: TextStyle(
                                  color: Color.fromRGBO(164, 162, 162, 1),
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            child: const Text(
                              'Quên mật khẩu?',
                              style: TextStyle(
                                color: Color.fromRGBO(164, 162, 162, 1),
                              ),
                            ),
                            onTap: () {
                              controller.forgot_password_pages();
                            },
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: screenWidth / 1.2,
                        height: screenHeight / 20,
                        child: StartButton(context),
                      ),
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
        controller.after_login_page();
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
