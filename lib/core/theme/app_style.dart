
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

  static TextStyle text14MediumGray60 =   TextStyle(
      color:AppColors.gray60,
      fontSize: 14,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text17MediumGray7 =   TextStyle(
    color: AppColors.gray7,
    fontSize: 17,
      fontFamily: FontName.montserratMedium
  );

  static TextStyle text20MediumWhite=   TextStyle(
    color: AppColors.white,
    fontSize: 20,
      fontFamily: FontName.montserratMedium
  );

  static TextStyle text22MediumBlack26=   TextStyle(
    color: AppColors.black26,
    fontSize: 22,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text14MediumBlack26=   TextStyle(
      color: AppColors.black26,
      fontSize: 14,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text14SemiBoldBlack26=   TextStyle(
      color: AppColors.black26,
      fontSize: 14,
      fontFamily: FontName.montserratSemiBold
  );
  static TextStyle text16SemiBoldBlack26=   TextStyle(
      color: AppColors.black26,
    fontSize: 16,
      fontFamily: FontName.montserratSemiBold
  );
  static TextStyle text16RegularGray4E=   TextStyle(
    color: AppColors.gray4E,
    fontSize: 16,
      fontFamily: FontName.montserratRegular
  );
  static TextStyle text12MediumBlack26=   TextStyle(
      color: AppColors.black26,
      fontSize: 12,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text11MediumBlack26=   TextStyle(
      color: AppColors.black26,
      fontSize: 10,
      fontFamily: FontName.montserratMedium,
  );
  static TextStyle text10MediumWhite=   TextStyle(
      color: AppColors.white,
      fontSize: 10,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text14MediumGray8B=   TextStyle(
      color: AppColors.gray8B,
      fontSize: 14,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text16MediumGray8B=   TextStyle(
      color: AppColors.gray8B,
      fontSize: 16,
      fontFamily: FontName.montserratMedium
  );
  static TextStyle text14MediumWhiteD2=   TextStyle(
      color: AppColors.whiteD2,
      fontSize: 14,
      fontFamily: FontName.montserratMedium
  );
}

