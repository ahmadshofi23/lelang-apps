import 'package:flutter/cupertino.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class CustomButtonIcon extends StatelessWidget {
  CustomButtonIcon({
    Key? key,
    required this.image,
    required this.text,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);
  String text;
  String image;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: kGreyColor.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.02,
              horizontal: screenWidth * 0.06,
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.12),
            child: Text(
              text,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w800,
                color: kGreyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
