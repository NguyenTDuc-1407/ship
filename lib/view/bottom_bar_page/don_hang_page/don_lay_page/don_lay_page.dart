import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/bottom_bar_page/don_hang_page/don_lay_page/don_lay_page_controller.dart';
import 'package:get/get.dart';

class DonLayPage extends GetView<DonLayController> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: DonLayController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 232, 232),
        body: ListView.builder(
          itemCount: controller.donLay.length,
          itemBuilder: (context, index) => Card(
            key: ValueKey(controller.donLay[index]["id"]),
            color: Colors.white,
            elevation: 0,
            margin: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: InkWell(
              onTap: () {
                controller.onNextPage();
              },
              child: Column(
                children: [
                  Container(
                    color: const Color.fromRGBO(255, 252, 227, 1),
                    child: ListTile(
                      leading: Image.asset('assets/icons/Vector.png'),
                      title: const Text(
                        'Đang chờ lấy',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset('assets/images/avata2.png')),
                        Expanded(
                          child: Text(
                            controller.donLay[index]['name'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 40),
                          child: const Text("3 KM"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                            left: 15,
                          ),
                          child: const Text('#12340189   -'),
                        ),
                        Expanded(
                          child: Text(
                            controller.donLay[index]['#12340189'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                            left: 15,
                          ),
                          child: const Text('Ngày lấy dự kiến   -'),
                        ),
                        Expanded(
                          child: Text(
                            controller.donLay[index]['day'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                            left: 15,
                          ),
                          child: const Text('Điểm lấy   -'),
                        ),
                        Expanded(
                          child: Text(
                            controller.donLay[index]['Điểm lấy'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
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
    );
  }
}
