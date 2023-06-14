import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooding/view/starts_page/starts_page_controller.dart';
import 'package:get/get.dart';

class startsPage extends GetView<startsPageController> {
  Widget build(BuildContext context) {
    return GetBuilder(
      init: startsPageController(),
      builder: (controller) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.orange,
                Colors.white,
              ],
            ),
          ),
          child: Center(
            child: Image.asset('assets/icons/logo.png'),
          ),
        ),
      ),
    );
  }
}
