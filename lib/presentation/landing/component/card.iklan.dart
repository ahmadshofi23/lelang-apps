import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class CardIklan extends StatelessWidget {
  const CardIklan({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: kNeutralGrey,
            width: 1.8,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02, vertical: screenHeight * 0.01),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/unsplash.png",
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kapal Pesiar Kencang",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.bagShopping,
                          size: screenWidth * 0.06,
                          color: kNeutralGrey,
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Text(
                          "Rp. 400.000",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: kNeutralGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.rectangleList,
                          color: kNeutralGrey,
                          size: screenWidth * 0.05,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "Live 200 Peserta",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: kNeutralGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                FaIcon(
                  FontAwesomeIcons.ellipsis,
                  color: kNeutralGrey,
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kFrameColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                      child: Center(
                          child: Text(
                        "Non-Aktifkan",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: kGreyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kFrameColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                      child: Center(
                          child: Text(
                        "Pause",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: kGreyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
