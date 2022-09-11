import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/landing/component/card.iklan.dart';

class IklanPage extends StatelessWidget {
  const IklanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Iklan Anda",
          style: TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: kGreyColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: kBlackColor.withOpacity(0.7),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.plus,
              color: kBlueColor2,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                    child: CardIklan(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                  );
                },
              ),
            ),
          )),
    );
  }
}
