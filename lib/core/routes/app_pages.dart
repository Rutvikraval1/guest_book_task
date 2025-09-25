
import 'package:get/get.dart';
import '../../features/splash/bindings/splash_binding.dart';
import '../../features/splash/views/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.splash,
        binding: SplashBinding(),
        page: () => SplashScreen()),
    // GetPage(
    //   name: AppRoutes.onBoarding,
    //   page: () => OnBoardingView(),
    //   binding: OnBoardingBinding(),
    // ),
    //
  ];
}
