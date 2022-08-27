import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/custom.button.icon.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';
import 'package:lelang_apps/presentation/component/default.button.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.08,
            bottom: screenHeight * 0.02,
          ),
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/auction.png",
                          height: screenHeight * 0.13,
                        ),
                        Text(
                          "Trule",
                          style: TextStyle(
                            color: kBlueColor,
                            fontSize: screenWidth * 0.13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Masuk untuk melanjutkan",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: kGreyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    CUSTOMETEXTFIELD(
                      hint: "Your Email",
                      icon: const Icon(Icons.email_outlined),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    CUSTOMETEXTFIELD(
                      hint: "Password",
                      icon: const Icon(Icons.lock_outline_sharp),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    DefaultButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: kGreyColor.withOpacity(0.1),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: kGreyColor.withOpacity(0.6),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: kGreyColor.withOpacity(0.1),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    CustomButtonIcon(
                        image: "assets/icon/google.png",
                        text: "Log in With Google",
                        screenHeight: screenHeight,
                        screenWidth: screenWidth),
                    SizedBox(height: screenHeight * 0.02),
                    CustomButtonIcon(
                        image: "assets/icon/facebook.png",
                        text: "Log in with Facebook",
                        screenHeight: screenHeight,
                        screenWidth: screenWidth),
                    SizedBox(height: screenHeight * 0.02),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Lupa Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04,
                          color: kBlueColor,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum punya akun?",
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        SizedBox(width: screenHeight * 0.01),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Lupa Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.04,
                              color: kBlueColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
