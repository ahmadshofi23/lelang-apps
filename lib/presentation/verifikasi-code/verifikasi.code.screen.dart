import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/navigation/routes.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/default.button.dart';

class VerifikasiCodeScreen extends StatelessWidget {
  const VerifikasiCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: kGreyColor.withOpacity(0.5),
        title: const Text(
          "Verification Code",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Masukkan Verifikasi Code",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w800,
                  color: kGreyColor.withOpacity(0.7),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum mendapat Kode?",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: kGreyColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        color: kBlueColor.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              DefaultButton(
                press: () => Get.toNamed(Routes.SUCCESS),
                text: "Lanjutkan",
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
