import 'package:fooding/routers/router_child/after_login_router.dart';
import 'package:fooding/routers/router_child/don_lay_router.dart';
import 'package:fooding/routers/router_child/edit_user.dart';
import 'package:fooding/routers/router_child/forgot_pass_router.dart';
import 'package:fooding/routers/router_child/ko_thanh_cong_router.dart';
import 'package:fooding/routers/router_child/location_page.dart';
import 'package:fooding/routers/router_child/login_router.dart';
import 'package:fooding/routers/router_child/sql_router.dart';
import 'package:fooding/routers/router_child/starts_router.dart';
import 'package:fooding/routers/router_child/xac_nhan_router.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> list = [
    ...startsRouter.list,
    ...sqlRouter.list,
    ...LoginRouter.list,
    ...forgotPassRouter.list,
    ...afterLoginRouter.list,
    ...detailDonLayRouter.list,
    ...locationRouter.list,
    ...xacNhanRouter.list,
    ...koThanhCongRouter.list,
    ...editUserRouter.list,
  ];
}
