
import 'package:flutter/material.dart';

import 'colors.dart';

class FontName {
  static const String montserratSemiBold = 'montserrat_semibold';
  static const String montserratRegular = 'montserrat_regular';
  static const String montserratBold = 'montserrat_bold';
  static const String montserratMedium= 'montserrat_medium';
}

class FontSize{
  //Heading 3
  static double fontSize41=41;
  //Heading 1
  static double fontSize24=24;
  //Heading 2
  static double fontSize18=18;
  //Paragraph
  static double fontSize14=14;
  //Small
  static double fontSize11=11;
  //XM
  static double fontSize8=8;
}

class AppStyle {
  static TextStyle text21BoldWhite =   TextStyle(
    color:AppColors.white,
    fontSize: 21,
    fontFamily: FontName.montserratBold
  );
  static TextStyle text18SemiBoldWhite =   TextStyle(
      color:AppColors.white,
      fontSize: 18,
      fontFamily: FontName.montserratSemiBold
  );

  static TextStyle text22MediumGray60 =   TextStyle(
    color:AppColors.gray60,
    fontSize: 22,
      fontFamily: FontName.montserratMedium
  );

  static TextStyle text17MediumGray7 =   TextStyle(
    color: AppColors.gray7,
    fontSize: 17,
      fontFamily: FontName.montserratMedium
  );


}

