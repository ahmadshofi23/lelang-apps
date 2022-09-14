import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.back),
        foregroundColor: kNeutralGrey,
        title: Text(
          "Profile",
          style: TextStyle(
            color: kBlackColor,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.05,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: screenHeight * 0.12,
                          height: screenHeight * 0.12,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset(
                            "assets/images/Profile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: screenWidth * 0.3,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kBlueColor,
                              ),
                              child: Center(
                                child: Text(
                                  "Terverifikasi",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: kWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.005),
                            Text(
                              "Asep Alexander Brokoli",
                              style: TextStyle(
                                color: kBlackColor,
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.005),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icon/card.png",
                                  width: screenHeight * 0.03,
                                ),
                                SizedBox(width: screenWidth * 0.01),
                                Text(
                                  "Rp 1.000.000",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: kGreyColor,
                      size: screenHeight * 0.04,
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aktivitas",
                      style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.shopping_cart,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Transaksi Saya",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.bag,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Pengiriman",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.bag,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Riwayat Transaksi",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Yang disukai",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keamanan",
                      style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.lock,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Ganti Password",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.lock,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Otentikasi 2 Langkah",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lainnya",
                      style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.placemark,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Alamat",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.creditcard,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Pembayaran",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.creditcard,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Notifikasi",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pusat Bantuan",
                      style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.creditcard,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "FAQ",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.creditcard,
                          color: kLightBlueColor,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Pengaduan",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
