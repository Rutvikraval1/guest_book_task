import 'package:flutter/material.dart';
import 'package:guestbook/core/widgets/asset_img/asset_image_show.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback onTap;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.size = 24,
    this.backgroundColor = Colors.blueAccent,
    this.iconColor = Colors.white,
    this.borderRadius = 6,
    this.height = 30,
    this.width = 30,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSvg = icon.toLowerCase().endsWith('.svg');
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: isSvg?ImageShow.svgImgAsset(icon):ImageShow.imgAsset(icon),
      ),
    );
  }
}
