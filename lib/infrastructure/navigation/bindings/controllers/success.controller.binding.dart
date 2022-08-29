import 'package:get/get.dart';
import 'package:lelang_apps/presentation/success/controller/success.controller.dart';

class SuccessControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessController>(
      () => SuccessController(),
    );
  }
}
