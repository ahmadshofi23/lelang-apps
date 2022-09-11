import 'dart:developer';

import 'package:get/get.dart';

class LandingController extends GetxController {
  var currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    update();
    log(currentIndex.toString());
  }
}
