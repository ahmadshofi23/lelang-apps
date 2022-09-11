import 'package:get/get.dart';
import 'package:lelang_apps/presentation/landing/controller/landing.controller.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class LandingControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
      () => LandingController(),
    );
  }
}
