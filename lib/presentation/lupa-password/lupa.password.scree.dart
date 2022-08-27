import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
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
        foregroundColor: kGreyColor.withOpacity(0.7),
        backgroundColor: Colors.transparent,
        title: Text(
          "Verifikasi Nomer",
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
            Spacer(),
            DefaultButton(
                text: "Save",
                screenHeight: screenHeight,
                screenWidth: screenWidth),
            SizedBox(
              height: bottomButton,
            )
          ],
        ),
      ),
    );
  }
}
