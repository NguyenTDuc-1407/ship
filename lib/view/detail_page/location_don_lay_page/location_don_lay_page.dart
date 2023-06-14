import 'package:flutter/material.dart';

import 'package:fooding/view/detail_page/location_don_lay_page/location_don_lay_page_controller.dart';
import 'package:get/get.dart';

class locationDonLayPage extends GetView<locationDonLayPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: locationDonLayPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 232, 232),
        body: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight / 1.3,
              child: Image.asset(
                'assets/images/location.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 30, bottom: 5),
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
                Container(
                  height: screenHeight / 2,
                  width: screenWidth,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.donLayPagesss.length,
                    itemBuilder: (context, index) => Container(
                      height: screenHeight / 2,
                      width: screenWidth,
                      key: ValueKey(controller.donLayPagesss[index]["id"]),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Row(
                                          children: [
                                            Image.asset(controller.anhShop),
                                            Column(
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  child: Text(
                                                    controller
                                                        .donLayPagesss[index]
                                                            ['name']
                                                        .toString(),
                                                    style: const TextStyle(
                                                        color: Color.fromRGBO(
                                                            70, 70, 71, 1)),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 20,
                                                              top: 10),
                                                      child: Text(
                                                        controller
                                                            .donLayPagesss[
                                                                index]['phone']
                                                            .toString(),
                                                        style: const TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    70,
                                                                    70,
                                                                    71,
                                                                    1)),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 5, top: 10),
                                                      child: const Icon(
                                                        Icons.phone,
                                                        size: 18,
                                                        color: Color.fromRGBO(
                                                            15, 169, 88, 1),
                                                      ),
                                                    )
                                                  ],
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
                                          margin:
                                              const EdgeInsets.only(left: 5),
                                          child: const Icon(
                                            Icons.location_on,
                                            size: 18,
                                            color:
                                                Color.fromRGBO(228, 161, 27, 1),
                                          ),
                                        ),
                                        Text(
                                          controller.donLayPagesss[index]
                                                  ['Điểm lấy']
                                              .toString(),
                                          style: const TextStyle(
                                              color: Color.fromRGBO(
                                                  128, 128, 137, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: screenHeight / 15,
                                        left: 10,
                                        right: 10),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        text: "Lưu ý:",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Shipper cần kiểm tra kĩ đơn hàng nguyên vẹn và các lưu ý kèm theo\n",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    128, 128, 137, 1)),
                                          ),
                                          TextSpan(
                                            text: "trước khi rời khỏi Shop",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    128, 128, 137, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(bottom: screenHeight / 15),
                                width: screenWidth / 1.2,
                                height: screenHeight / 20,
                                child: StartButton(context),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
