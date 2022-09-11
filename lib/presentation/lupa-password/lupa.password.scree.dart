import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/navigation/routes.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';
import 'package:lelang_apps/presentation/component/default.button.dart';
import 'package:lelang_apps/presentation/lupa-password/controller/lupa.password.controller.dart';

class LupaPasswordScreen extends GetView<LupaPasswordController> {
  const LupaPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var bottomButton = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: kGreyColor.withOpacity(0.9),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Verifikasi Nomer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomer HP",
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
                color: kGreyColor.withOpacity(
                  0.7,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            CUSTOMETEXTFIELD(
                icon: Icon(Icons.phone_iphone_sharp), hint: "(+62) 555-0133"),
            Spacer(),
            Spacer(),
            DefaultButton(
                press: () => Get.toNamed(Routes.LUPAPASSWORD),
                text: "Save",
                screenHeight: screenHeight,
                screenWidth: screenWidth),
            SizedBox(
              height: screenHeight * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
