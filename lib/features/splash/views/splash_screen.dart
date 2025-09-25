
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/app_image.dart';
import '../../../core/widgets/asset_img/asset_image_show.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController>{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageShow.imgAsset(AppImages.appLogo,height: 200)
      ),
    );
  }
}
