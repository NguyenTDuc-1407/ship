import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fooding/view/sql_page/sql_page_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SqlPage extends GetView<sqlPageController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder(
      init: sqlPageController(),
      builder: (controller) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 2.3,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(249, 241, 206, 159),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(3600),
                          bottomLeft: Radius.circular(3600))),
                ),
                Container(
                  height: screenHeight / 5,
                  width: screenHeight / 6,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 174, 83),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(360),
                        bottomLeft: Radius.circular(36000)),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: screenHeight / 2,
                    child: PageView.builder(
                      onPageChanged: (value) => controller.onPageChanged(value),
                      controller: controller.pageController,
                      itemCount: controller.imageList.length,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(top: screenHeight / 6),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage(controller.imageList[index]['image']),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Lorem ipsum dolor sit amet,\n",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "consectetur adipiscing elit, sed do\n",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "eiusmod tempor incididunt ut \nlabore",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SmoothPageIndicator(
                    controller: controller.pageController,
                    count: controller.imageList.length,
                    effect: const ExpandingDotsEffect(
                        radius: 60.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        dotColor: Colors.grey,
                        activeDotColor: Color.fromRGBO(228, 161, 27, 1)),
                    onDotClicked: (index) {}),
                Container(
                  margin: const EdgeInsets.only(bottom: 30, top: 20),
                  width: screenWidth / 1.2,
                  height: screenHeight / 20,
                  child: StartButton(context),
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
      ),
      onPressed: () {
        controller.onNext();
      },
      child: const Text(
        'NEXT',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
