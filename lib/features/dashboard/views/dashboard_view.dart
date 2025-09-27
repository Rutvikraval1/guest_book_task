
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/colors.dart';
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
            children: [
              const HeaderSection(),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderLeftSection(),
                    const SidebarSection(),
                    Container(
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    const Expanded(
                      child: MainContentSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),

      // Row(
      //   children: [
      //     // Navigation Sidebar
      //     Container(
      //       width: 60,
      //       height: double.infinity,
      //       color:AppColors.black26,
      //       child: Column(
      //         children: [
      //           Expanded(
      //             child: Column(
      //               children: List.generate(6, (index) {
      //                 return Expanded(
      //                   child: Container(
      //                     width: double.infinity,
      //                     decoration:  BoxDecoration(
      //                       border: Border(
      //                         top: BorderSide(color: AppColors.black26),
      //                         bottom: BorderSide(color: Colors.black26),
      //                       ),
      //                     ),
      //                     child: const Icon(
      //                       Icons.menu,
      //                       color: Colors.white,
      //                       size: 24,
      //                     ),
      //                   ),
      //                 );
      //               }),
      //             ),
      //           ),
      //           Container(
      //             height: 100,
      //             padding: const EdgeInsets.all(8),
      //             child: Column(
      //               children: [
      //                 const Icon(
      //                   Icons.settings,
      //                   color: Colors.white,
      //                   size: 24,
      //                 ),
      //                 const SizedBox(height: 8),
      //                 Text(
      //                   'Ver 4.9\nFL 3.3.6',
      //                   style: const TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 10,
      //                     fontWeight: FontWeight.w600,
      //                   ),
      //                   textAlign: TextAlign.center,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     // Main Content Area
      //     Expanded(
      //       child: Column(
      //         children: [
      //           const HeaderSection(),
      //           Expanded(
      //             child: Row(
      //               children: [
      //                 const SidebarSection(),
      //                 Container(
      //                   width: 1,
      //                   color: Colors.grey.shade300,
      //                 ),
      //                 const Expanded(
      //                   child: MainContentSection(),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

