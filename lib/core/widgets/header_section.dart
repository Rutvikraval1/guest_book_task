import 'package:flutter/material.dart';
import 'package:guestbook/core/theme/app_style.dart';
import 'package:guestbook/core/theme/colors.dart';
import 'package:guestbook/core/utils/app_image.dart';

import 'asset_img/asset_image_show.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.black26, // background color
        boxShadow: [
          BoxShadow(
            color: AppColors.black26.withOpacity(0.3), // shadow color
            spreadRadius: 0,
            blurRadius: 6, // how soft the shadow is
            offset: const Offset(0, 4), // x=0, y=4 (bottom shadow)
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              ImageShow.svgImgAsset(AppImages.icMenu,height: 17),
              const SizedBox(width: 30),
              ImageShow.svgImgAsset(AppImages.icSwapArrow,),
              const SizedBox(width: 30),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: ImageShow.imgAsset(AppImages.icProfilePic,),
              ),
              const SizedBox(width: 12),
               Text(
                'Johnson Francisco',
                style: AppStyle.text21BoldWhite,
              ),
              const SizedBox(width: 20),
               Text(
                'Clocked in at 09 : 33 AM',
                style: AppStyle.text18SemiBoldWhite,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
               Text(
                '10 : 20 AM',
                style: AppStyle.text21BoldWhite,
              ),
              const SizedBox(width: 24),
              ImageShow.svgImgAsset(AppImages.icWifi,),
              const SizedBox(width: 24),
              ImageShow.svgImgAsset(AppImages.icNotification,),
            ],
          ),
        ],
      ),
    );
  }
}