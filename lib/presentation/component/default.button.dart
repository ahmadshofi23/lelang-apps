import 'package:flutter/material.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight * 0.08,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kBlueColor,
        ),
        onPressed: () {},
        child: Text(
          "Sign in",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.04,
          ),
        ),
      ),
    );
  }
}
