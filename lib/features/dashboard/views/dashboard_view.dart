
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/header_left_section.dart';
import '../../../core/widgets/header_section.dart';
import 'main_content_section.dart';
import '../../../core/widgets/sidebar_section.dart';
import '../controllers/dashboard_controller.dart';
class DashboardView extends GetView<DashboardController>{
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        children: const [
          HeaderSection(),
          Expanded(
            child: _ResponsiveBody(),
          ),
        ],
      ),
    );
  }
}

class _ResponsiveBody extends StatelessWidget {
  const _ResponsiveBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();

    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      // If very narrow, stack vertically.
      if (width < 900) {
        return Column(
          children: const [
            HeaderLeftSection(),
            Divider(height: 1),
            Expanded(child: MainContentSection()),
          ],
        );
      }

      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderLeftSection(),
          const SizedBox(width: 8),
          Obx(() {
            // This widget will rebuild whenever isMenuDisable changes
            if (controller.isMenuDisable.value) {
              return Row(
                children: [
                  const SidebarSection(),
                  Container(width: 1, color: Colors.grey.shade300),
                ],
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
          const Expanded(child: MainContentSection()),
        ],
      );
    });
  }
}


