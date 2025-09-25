

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_style.dart';
import '../../utils/config_text.dart';
import '../../utils/size_box.dart';


class Loader {
  void showLoaderDialog()  {
    Get.dialog(
      // barrierDismissible: false,
      PopScope(
        canPop: false,
        child:AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1), //Your Theme.
          content:  SizedBox(
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 35,
                  height: 35,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
                SizeBoxHeight().height10,
                Text(
                  ConfigText.pleaseWait,
                  style:AppStyle.text14RegularWhite,
                ),
              ],
            ),
          ),
        ) ,
      ),

    );
  }

  void loaderDispose(){
    Get.back();
  }
}
