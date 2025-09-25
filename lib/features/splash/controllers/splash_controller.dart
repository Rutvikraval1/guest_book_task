
import 'dart:async';

import 'package:get/get.dart';

import '../../../core/routes/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    startTimer();
    // TODO: implement onInit
    super.onInit();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Get.offNamed(AppRoutes.home);
  }
}
