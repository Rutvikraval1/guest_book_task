
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guestbook/core/theme/colors.dart';
import '../../../core/utils/app_image.dart';
import '../../../core/widgets/asset_img/asset_image_show.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController>{
  const SplashScreen({super.key});

  @override
  StatelessElement createElement() {
    controller.startTimer();
    // TODO: implement createElement
    return super.createElement();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageShow.svgImgAsset(AppImages.icEoLogo,height: 200,colorCode: AppColors.black26)
      ),
    );
  }
}
