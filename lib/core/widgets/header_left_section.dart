

import 'package:flutter/material.dart';
import 'package:guestbook/core/utils/app_image.dart';
import 'package:guestbook/core/widgets/asset_img/asset_image_show.dart';

import '../theme/colors.dart';

class HeaderLeftSection extends StatelessWidget {
  const HeaderLeftSection({super.key});


  @override
  Widget build(BuildContext context) {
    final menuIcons = [
      AppImages.icEoLogo,
      AppImages.icNewOrder,
      AppImages.icLocation,
      AppImages.icOpenTickets,
      AppImages.icOrderOs,
      AppImages.icChart,
      AppImages.icVerGroup,
    ];
    return Container(
      width: 60,
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
      child: ListView.builder(
        itemCount: menuIcons.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 38),
        decoration:  BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.black26),
            bottom: BorderSide(color: Colors.black26),
          ),
        ),
        child: ImageShow.svgImgAsset(menuIcons[index]),
      ),),
    );
  }
}