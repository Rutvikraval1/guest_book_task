

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageShow{
  static  Image imgAsset(String imagePath,
      {double? height,
        double? width,
        Color? colorCode,
        BoxFit? boxFit,
        BlendMode? blendMode}) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
      color: colorCode,
      colorBlendMode: blendMode,
      fit: boxFit ?? BoxFit.contain,
    );
  }


  static  SvgPicture svgImgAsset(String imagePath,
      {double? height,
        double? width,
        Color? colorCode,
        BoxFit? boxFit,
        BlendMode? blendMode}) {
    return SvgPicture.asset(
      imagePath,
      height: height??24,
      width: width??24,
      color: colorCode,
      fit: boxFit ?? BoxFit.contain,
    );
  }





}