import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/navigation/routes.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.password.dart';
import 'package:lelang_apps/presentation/component/default.button.dart';
import 'package:lelang_apps/presentation/register/controller/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.08,
            bottom: screenHeight * 0.02,
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
          ),
          child: SingleChildScrollView(
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
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Buat akun baru",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: kGreyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                CUSTOMETEXTFIELD(
                  icon: const Icon(Icons.people_alt_outlined),
                  hint: "Full Name",
                ),
                SizedBox(height: screenHeight * 0.015),
                CUSTOMETEXTFIELD(
                  icon: const Icon(Icons.email_outlined),
                  hint: "Your Email",
                ),
                SizedBox(height: screenHeight * 0.015),
                CustomeTextFieldPassword(
                    icon: const Icon(Icons.lock_outline_rounded),
                    hint: "Password"),
                SizedBox(height: screenHeight * 0.015),
                CustomeTextFieldPassword(
                    icon: const Icon(Icons.lock_outline_rounded),
                    hint: "Password Again"),
                SizedBox(height: screenHeight * 0.02),
                DefaultButton(
                    press: () => Get.toNamed(Routes.VERIFIKASINOMER),
                    text: "Sign Up",
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have a account?",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w400,
                        color: kGreyColor,
                      ),
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(Routes.HOME),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
