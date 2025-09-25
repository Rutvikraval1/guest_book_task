

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastMes {
  void showMessage(String message,{bool errorCode=false }) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: errorCode?Colors.red:Colors.green,
        textColor: Colors.white,
        webBgColor: "#505050",
        webPosition: "center",
        webShowClose: false,
        fontSize: 14.0);
  }
}
