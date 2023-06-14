import 'package:flutter/material.dart';
import 'package:fooding/di_container.dart' as di;
import 'package:fooding/routers/app_pages.dart';
import 'package:fooding/routers/router_child/starts_router.dart';
import 'package:get/get_navigation/get_navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: const Color.fromRGBO(228, 161, 27, 1))),
      initialRoute: startsRouter.Starts_Page,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.list,
    );
  }
}
