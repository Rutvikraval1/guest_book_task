
import 'dart:async';

import 'package:get/get.dart';

import '../../../core/routes/app_routes.dart';

class DashboardController extends GetxController {

  RxBool isMenuDisable=true.obs;
 RxInt selectedIndex = 0.obs;
  final List<String> tabs = [
    'Profile',
    'Reservation',
    'Payment',
    'Feedback',
    'Order History',
  ];
  void toggleMenuDisable({bool isValue=false}) {
    if(isValue){
      isMenuDisable.value=false;
    }else{
      isMenuDisable.value = !isMenuDisable.value;
    }
  }

  void changeIndex(value) {
    selectedIndex.value = value;
  }
}
