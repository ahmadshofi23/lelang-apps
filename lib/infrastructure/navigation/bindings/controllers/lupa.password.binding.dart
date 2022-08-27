import 'package:get/get.dart';
import 'package:lelang_apps/presentation/lupa-password/controller/lupa.password.controller.dart';

class LupaPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LupaPasswordController>(
      () => LupaPasswordController(),
    );
  }
}
