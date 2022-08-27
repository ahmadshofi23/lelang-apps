import 'package:get/get.dart';
import 'package:lelang_apps/presentation/login/controller/login.controller.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
