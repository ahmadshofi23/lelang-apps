import 'package:get/get.dart';
import 'package:lelang_apps/presentation/verifikasi-code/controller/verifikasi.code.controller.dart';

class VerifikasiCodeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiCodeController>(
      () => VerifikasiCodeController(),
    );
  }
}
