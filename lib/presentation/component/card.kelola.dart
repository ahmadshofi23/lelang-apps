import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class CardKelola extends StatelessWidget {
  CardKelola({
    Key? key,
    required this.image,
    required this.title,
    required this.warna,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  String image;
  String title;
  Color warna;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Image.asset(
              image,
              width: screenWidth * 0.06,
              height: screenHeight * 0.028,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: darkColor,
            fontSize: screenWidth * 0.04,
          ),
        )
      ],
    );
  }
}
