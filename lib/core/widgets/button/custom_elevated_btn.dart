

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_style.dart';
import '../../theme/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final Function()? onPress;

  const CustomElevatedButton(
      {super.key,
      required this.title,
      required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor:AppColors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      child:  Text(
        title,
        style: AppStyle.text10MediumWhite
      ),
    );
  }
}
