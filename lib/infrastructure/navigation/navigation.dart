import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lelang_apps/infrastructure/navigation/bindings/controllers/verifikasi.controller.binding.dart';
import 'package:lelang_apps/presentation/login/controller/login.controller.dart';
import 'package:lelang_apps/presentation/lupa-password/lupa.password.scree.dart';
import 'package:lelang_apps/presentation/register/register.screen.dart';
import 'package:lelang_apps/presentation/success/success.screen.dart';
import 'package:lelang_apps/presentation/verifikasi-code/verifikasi.code.screen.dart';
import 'package:lelang_apps/presentation/verifikasi-nomer/verifikasi.screen.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterScreen(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.LUPAPASSWORD,
      page: () => const LupaPasswordScreen(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: Routes.VERIFIKASINOMER,
      page: () => const VerifikasiNomerScreen(),
      binding: VerifikasiNomerControllerBinding(),
    ),
    GetPage(
      name: Routes.VERIFIKASICODE,
      page: () => const VerifikasiCodeScreen(),
      binding: VerifikasiCodeControllerBinding(),
    ),
    GetPage(
      name: Routes.SUCCESS,
      page: () => const SuccessScreen(),
      binding: SuccessControllerBinding(),
    ),
  ];
}
