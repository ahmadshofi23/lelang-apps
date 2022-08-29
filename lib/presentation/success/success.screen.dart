import 'package:flutter/material.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/default.button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenHeight * 0.12,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    child: Image.asset("assets/icon/checklist.png"),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Success",
                  style: TextStyle(
                    fontSize: screenWidth * 0.08,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Thanks for Using ",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: kGreyColor,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                SizedBox(height: screenHeight * 0.02),
                DefaultButton(
                  press: () {},
                  text: "Go Auction",
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
