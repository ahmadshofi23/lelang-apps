import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/card.hibah.dart';
import 'package:lelang_apps/presentation/component/card.kelola.dart';
import 'package:lelang_apps/presentation/component/card.lelang.dart';
import 'package:lelang_apps/presentation/component/card.product.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';
import 'package:lelang_apps/presentation/component/string.text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kFrameColor,
        body: SafeArea(
          child: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //header
                Container(
                  width: double.infinity,
                  color: kWhiteColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.04,
                      right: screenWidth * 0.04,
                      top: screenHeight * 0.02,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: CUSTOMETEXTFIELD(
                                  icon: Icon(Icons.search),
                                  hint: "Cari Produk"),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icon/message-square.png",
                                  width: screenWidth * 0.07,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icon/notif.png",
                                  width: screenWidth * 0.07,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icon/nav.png",
                                  width: screenWidth * 0.07,
                                )),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        //location
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: screenWidth * 0.04,
                              color: kGreyColor,
                            ),
                            Text(
                              "Kiara Condong, West Java",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: kGreyColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: screenWidth * 0.06,
                              color: kGreyColor,
                            ),
                          ],
                        ),
                        // Divider(thickness: 1, color: ,)
                      ],
                    ),
                  ),
                ),

                //banner
                Container(
                  width: double.infinity,
                  color: kWhiteColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.02,
                      left: screenWidth * 0.04,
                      right: screenWidth * 0.04,
                      bottom: screenHeight * 0.03,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              3,
                              (index) => Container(
                                margin:
                                    EdgeInsets.only(right: screenWidth * 0.04),
                                width: screenWidth * 0.85,
                                height: screenWidth * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/icon/banner1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        Text(
                          TextApps.kelolaKebutuhananda,
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            color: darkColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CardKelola(
                                warna: kBlueColor2,
                                image: "assets/icon/topup.png",
                                title: "Top Up",
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            CardKelola(
                                warna: kGreenColorOne,
                                image: "assets/icon/lelang.png",
                                title: "Lelang",
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            CardKelola(
                                warna: kPurpleOne,
                                image: "assets/icon/beli_barang.png",
                                title: "Beli Barang",
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            CardKelola(
                                warna: kLightBlueColor,
                                image: "assets/icon/hibah.png",
                                title: "Hibah",
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),

                Container(
                  width: double.infinity,
                  color: kWhiteColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.02,
                      left: screenWidth * 0.04,
                      right: screenWidth * 0.04,
                      bottom: screenHeight * 0.04,
                    ),
                    child: Column(
                      children: [
                        //disekitar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Di Sekitar anda",
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: darkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Lihat lainnya",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: kLightBlueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                4,
                                (index) => Padding(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.01,
                                          left: screenWidth * 0.01,
                                          bottom: screenHeight * 0.02,
                                          right: screenWidth * 0.03),
                                      child: CardProduct(
                                          screenWidth: screenWidth,
                                          screenHeight: screenHeight),
                                    )),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        //lelang list
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lelang",
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: darkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Lihat lainnya",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: kLightBlueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                4,
                                (index) => Padding(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.01,
                                          left: screenWidth * 0.01,
                                          bottom: screenHeight * 0.02,
                                          right: screenWidth * 0.03),
                                      child: CardLelang(
                                          screenWidth: screenWidth,
                                          screenHeight: screenHeight),
                                    )),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        //hibah
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hibah",
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: darkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Lihat lainnya",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: kLightBlueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              4,
                              (index) => Padding(
                                padding: EdgeInsets.only(
                                    top: screenHeight * 0.01,
                                    left: screenWidth * 0.01,
                                    bottom: screenHeight * 0.02,
                                    right: screenWidth * 0.03),
                                child: CardHibah(
                                    screenWidth: screenWidth,
                                    screenHeight: screenHeight),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
