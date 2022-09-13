import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';
import 'package:lelang_apps/presentation/component/card.hibah.dart';
import 'package:lelang_apps/presentation/component/card.kelola.dart';
import 'package:lelang_apps/presentation/component/card.lelang.dart';
import 'package:lelang_apps/presentation/component/card.product.dart';
import 'package:lelang_apps/presentation/component/custome.textfield.dart';
import 'package:lelang_apps/presentation/component/string.text.dart';
import 'package:lelang_apps/presentation/landing/controller/landing.controller.dart';
import 'package:lelang_apps/presentation/landing/page/home.page.dart';
import 'package:lelang_apps/presentation/landing/page/iklan.page.dart';
import 'package:lelang_apps/presentation/landing/page/kesukaan.page.dart';
import 'package:lelang_apps/presentation/landing/page/posting.page.dart';
import 'package:lelang_apps/presentation/landing/page/transaksi.page.dart';

class LandingScreen extends GetView<LandingController> {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: kFrameColor,
          body: SafeArea(
            child: IndexedStack(
              index: controller.currentIndex,
              children: const [
                HomePage(),
                IklanPage(),
                PostingPage(),
                TransaksiPage(),
                KesukaanPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeIndex,
              currentIndex: controller.currentIndex,
              selectedItemColor: kBlueColor,
              unselectedItemColor: kNeutralGrey,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.house,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.speaker_3,
                    ),
                    label: "Iklan Anda"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.camera_outlined,
                    ),
                    label: "Posting"),
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.bookmark),
                    label: "Transaksi"),
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.heart), label: "Kesukaan"),
              ]),
        );
      },
    );
  }
}
