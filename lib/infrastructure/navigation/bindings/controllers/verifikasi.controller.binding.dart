import 'package:get/get.dart';
import 'package:lelang_apps/presentation/verifikasi-nomer/controller/verifikasi.nomer.controller.dart';

class VerifikasiNomerControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiNomerController>(
      () => VerifikasiNomerController(),
    );
  }
}
