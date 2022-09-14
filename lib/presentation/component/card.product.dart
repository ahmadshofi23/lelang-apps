import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/string.text.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: screenWidth * 0.45,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: kGreyColor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: kWhiteColor,
                              primary: kPurpleOne,
                            ),
                            onPressed: () {},
                            child: Text(TextApps.beliBarang),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icon/like.png",
                                width: screenWidth * 0.06,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Center(
                        child: Image.asset(
                          "assets/icon/sepatu.png",
                          width: screenWidth * 0.35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Nike Air Max 270 React England Y",
              maxLines: 4,
              softWrap: true,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: darkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Rp.299.000",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: kLightBlueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Kiaracondong West Java",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: kGreyColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
