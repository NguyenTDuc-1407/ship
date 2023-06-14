import 'package:fooding/provider/user_provider.dart';
import 'package:fooding/routers/router_child/login_router.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class LoginPageController extends GetxController {
  final UserProvider _userProvider = GetIt.I.get<UserProvider>();
  // final DioClient? dioClient = GetIt.I.get<DioClient>();

  var inputPassword = true.obs;
  var checkBox = true.obs;
  void onBack() {
    Get.back();
  }

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;
  }

///
///
///
  void actionCheckBox() {
    checkBox.value = !checkBox.value;
  }

  void forgot_password_pages() {
    Get.toNamed(LoginRouter.forgot_Pass_Page);
  }

  void after_login_page() {
    Get.toNamed(LoginRouter.after_login_Page);
  }

  void _getAllPosts() {
    _userProvider.AllUser(
      onSuccess: (posts) {
        print(posts[0].title);
      },
      onError: (error) {},
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _getAllPosts();
  }
}
