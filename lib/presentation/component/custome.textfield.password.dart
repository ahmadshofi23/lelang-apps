import 'package:flutter/material.dart';
import 'package:lelang_apps/infrastructure/theme/utils.dart';

class CustomeTextFieldPassword extends StatelessWidget {
  CustomeTextFieldPassword({
    Key? key,
    required this.icon,
    required this.hint,
  }) : super(key: key);
  Icon icon;
  String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hint,
        hintStyle: TextStyle(fontWeight: FontWeight.w700, color: kGreyColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kGreyColor.withOpacity(0.1),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kBlueColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
