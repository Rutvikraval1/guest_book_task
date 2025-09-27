import 'package:flutter/widgets.dart';

class Responsive {
  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
          MediaQuery.of(context).size.width < 1024;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static double sidebarWidth(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    final width = screen * 0.22;
    if (width < 280) return 280;
    if (width > 420) return 420;
    return width;
  }

  static double cardWidth(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    if (isLarge(context)) return screen * 0.18;
    if (isMedium(context)) return screen * 0.22;
    return screen * 0.9;
  }
}
