import 'package:get/get.dart';
import 'package:lelang_apps/presentation/register/controller/register.controller.dart';

class RegisterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
