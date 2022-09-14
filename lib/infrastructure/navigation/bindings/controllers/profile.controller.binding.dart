import 'package:get/get.dart';
import 'package:lelang_apps/presentation/profile/controller/profile.controller.dart';

class ProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
