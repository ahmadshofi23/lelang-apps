import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/separator.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Transaksi",
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
                FontAwesomeIcons.bars,
                color: kBlackColor.withOpacity(0.7),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return CardTransaksi(
                screenWidth: screenWidth, screenHeight: screenHeight);
          },
        ));
  }
}

class CardTransaksi extends StatelessWidget {
  const CardTransaksi({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kNeutralGrey, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sepatu Nike Zoom Pegasus",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                "Lelang: Agustus 1, 2021",
                style: TextStyle(
                  fontSize: screenWidth * 0.035,
                  color: kGreyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              const MySeparator(),
              SizedBox(height: screenHeight * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Status",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Arriving",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "1 items purhcased",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kBlackColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Harga",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Rp 75,000",
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: kLightBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
