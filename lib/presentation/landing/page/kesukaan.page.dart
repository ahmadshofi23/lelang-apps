import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';

class KesukaanPage extends StatelessWidget {
  const KesukaanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.099),
          child: Container(
            width: double.infinity,
            color: kWhiteColor,
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
                right: screenWidth * 0.04,
                top: screenHeight * 0.01,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: CUSTOMETEXTFIELD(
                            icon: Icon(Icons.search), hint: "Cari Produk"),
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
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.location_on_outlined,
                  //       size: screenWidth * 0.04,
                  //       color: kGreyColor,
                  //     ),
                  //     Text(
                  //       "Kiara Condong, West Java",
                  //       style: TextStyle(
                  //         fontSize: screenWidth * 0.04,
                  //         color: kGreyColor,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     Icon(
                  //       Icons.keyboard_arrow_down_rounded,
                  //       size: screenWidth * 0.06,
                  //       color: kGreyColor,
                  //     ),
                  //   ],
                  // ),
                  // Divider(thickness: 1, color: ,)
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              child: CardLike(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            );
          },
        ),
        floatingActionButton: Wrap(
          direction: Axis.horizontal,
          children: [
            SizedBox(
              height: screenHeight * 0.055,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                child: Row(
                  children: [
                    Expanded(
                      child: FloatingActionButton(
                        backgroundColor: kLightBlueColor,
                        heroTag: "1",
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(CupertinoIcons.arrow_up_arrow_down),
                            SizedBox(width: screenWidth * 0.01),
                            const Text("Sort"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Expanded(
                      child: FloatingActionButton(
                        heroTag: "2",
                        backgroundColor: kLightBlueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FaIcon(FontAwesomeIcons.filter),
                            SizedBox(width: screenWidth * 0.01),
                            const Text("Filter"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class CardLike extends StatelessWidget {
  const CardLike({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: kNeutralGrey,
              width: 1,
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenHeight * 0.02,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: screenHeight * 0.12,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/unsplash.png"),
                        Positioned(
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.02,
                                vertical: screenHeight * 0.01),
                            child: Container(
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: kGreenColorOne,
                              ),
                              child: Center(
                                child: Text(
                                  "Lelang",
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kapal Pesiar Kencang",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bagShopping,
                            color: kGreyColor,
                          ),
                          SizedBox(width: screenHeight * 0.01),
                          Text(
                            "Rp 400.000",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: kGreyColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.doc_plaintext,
                            color: kGreyColor,
                          ),
                          SizedBox(width: screenHeight * 0.01),
                          Text(
                            "2 Km",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: kGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                      onPressed: () {
                        // showModalBottomSheet(
                        //     backgroundColor: kBlueColor2,
                        //     context: context,
                        //     builder: (context) => Container());
                        // log("di print");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          onPrimary: kLightBlueColor,
                          side: BorderSide(
                            color: kLightBlueColor,
                            width: 1,
                          )),
                      child: const Text("Hapus"),
                    ),
                  )),
                  SizedBox(width: screenWidth * 0.02),
                  Expanded(
                      child: SizedBox(
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: kLightBlueColor),
                        onPressed: () {},
                        child: const Text("Ikuti")),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
