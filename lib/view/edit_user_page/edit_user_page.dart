import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/edit_user_page/edit_user_page_controlller.dart';
import 'package:get/get.dart';

class editUserPage extends GetView<editUserPageController> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: editUserPageController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 232, 232),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(228, 161, 27, 1),
            title: const Text('Chỉnh sửa thông tin'),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  controller.onBack();
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Họ và tên"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: screenWidth / 1.2,
                              height: screenHeight / 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nguyễn Văn A',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Ngày sinh"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: screenWidth / 1.2,
                              height: screenHeight / 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nguyễn Văn A',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Giới tính"),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (value) {},
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text('Nam'),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        ;
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text('Nữ'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Email"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: screenWidth / 1.2,
                              height: screenHeight / 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nguyễn Văn A',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Số điện thoại"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: screenWidth / 1.2,
                              height: screenHeight / 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nguyễn Văn A',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Địa chỉ"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: screenWidth / 1.2,
                              height: screenHeight / 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nguyễn Văn A',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight / 8),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: screenWidth / 1.2,
                    height: screenHeight / 20,
                    child: StartButton(context)),
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
      onPressed: () {},
      child: const Text(
        'Lưu',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
