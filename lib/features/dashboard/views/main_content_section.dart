import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guestbook/core/theme/app_style.dart';
import 'package:guestbook/core/theme/colors.dart';
import 'package:guestbook/core/utils/app_image.dart';
import 'package:guestbook/core/widgets/asset_img/asset_image_show.dart';
import 'package:guestbook/core/widgets/button/custom_elevated_btn.dart';

import '../../../core/utils/responsive.dart';
import '../controllers/dashboard_controller.dart';

class MainContentSection extends StatelessWidget {
  const MainContentSection({super.key});





  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>(); // here is fine
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      final isSmall = Responsive.isSmall(context);
      final isMedium = Responsive.isMedium(context);
      final cardWidth = Responsive.cardWidth(context);
      final cardHeight = MediaQuery.of(context).size.height * 0.32;

      return Obx(()=>SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, top: 24, right: 20, bottom: 24),
          child: GestureDetector(
            onTap: (){
              controller.toggleMenuDisable(isValue: true);
            },
            child: Column(
              children: [
                // Header card
                ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 120),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageShow.svgImgAsset(AppImages.icGuestBook, height: 45),
                        const SizedBox(height: 12),
                        Text('Guest Book', style: AppStyle.text16SemiBoldBlack26),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Text(
                            'The guest book feature remembers your guests dietary needs, allergies, and favorite '
                                'dishes. It organizes dining preferences for a customized and memorable '
                                'experience, ensuring each visit is tailored to their individual needs.',
                            textAlign: TextAlign.center,
                            style: AppStyle.text16RegularGray4E,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(controller.tabs.length, (index) {
                          final isActive = index == controller.selectedIndex.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: GestureDetector(
                              onTap: (){
                                // setState(() => selectedIndex = index);
                                controller.changeIndex(index);
                                controller.toggleMenuDisable(isValue: true);
                              },
                              child: _buildTab(controller.tabs[index], isActive),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 180),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: (isSmall)
                          ? Column(
                        children: [
                          _profileHeader(isSmall),
                          const SizedBox(height: 12),
                          _statsCard(isSmall),
                          const SizedBox(height: 12),
                          _cardsStacked(cardHeight),
                        ],
                      )
                          : IntrinsicHeight(
                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                            SizedBox(
                              width: 190,
                              child: _profileHeader(isSmall),
                            ),
                            const VerticalDivider(
                                color: Color(0x4D8E8E93), thickness: 2, width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _statsCard(isSmall),
                                  const SizedBox(height: 12),
                                  if(controller.isMenuDisable.value)
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 2,
                                        child: SizedBox(
                                          width: cardWidth,
                                          child: Container(
                                            padding: const EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteF8,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: _buildLoyaltySection(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Flexible(
                                        flex: 2,
                                        child: SizedBox(
                                          width: cardWidth,
                                          child: Container(
                                            padding: const EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteF8,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: _buildVisitsSection(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if(controller.isMenuDisable.value)
                                  const SizedBox(height: 12),
                                  if(controller.isMenuDisable.value)
                                  Flexible(
                                    flex: (isMedium ? 4 : 3),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxWidth: isMedium ? double.infinity : cardWidth),
                                      child: Container(
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteF8,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: _buildPersonalInfo(),
                                      ),
                                    ),
                                  ),
                                  if(!controller.isMenuDisable.value)
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: (isMedium ? 4 : 3),
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                              maxWidth: isMedium ? double.infinity : cardWidth),
                                          child: Container(
                                            padding: const EdgeInsets.all(16),
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteF8,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: _buildPersonalInfo(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Flexible(
                                        flex: 2,
                                        child: SizedBox(
                                          width: cardWidth,
                                          child: Container(
                                            padding: const EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteF8,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: _buildLoyaltySection(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Flexible(
                                        flex: 2,
                                        child: SizedBox(
                                          width: cardWidth,
                                          child: Container(
                                            padding: const EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteF8,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: _buildVisitsSection(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                                                ],
                                              ),
                          ),
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // Reusable section cards
                controller.isMenuDisable.value?
                  Column(
                    children: [
                      _buildSectionCard(
                        'ALLERGIES',
                        'No Allergies',
                        AppImages.icKitchen,
                        'Add',
                      ),
                      const SizedBox(height: 18),
                      _buildSectionCard('UPCOMING VISITS', 'No Upcoming Visits', AppImages.icStore, 'Book A Visit'),
                    ],
                  ):
                  Row(
                    children: [
                      Expanded(child: _buildSectionCard(
                        'ALLERGIES',
                        'No Allergies',
                        AppImages.icKitchen,
                        'Add',
                      )),
                      const SizedBox(width: 18),
                      Expanded(child: _buildSectionCard('UPCOMING VISITS', 'No Upcoming Visits', AppImages.icStore, 'Book A Visit'))
                    ],
                  ),
                  
                const SizedBox(height: 18),
                _buildNotesSection(),
                const SizedBox(height: 18),
                _buildSectionCard('RECENT ORDERS', 'No Recent Orders to Show', AppImages.icDinner, null),
                const SizedBox(height: 18),
                _buildSectionCard('Online reviews', 'No Online Review to Show', AppImages.icNoReview, null),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _profileHeader(bool isSmall) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 34,
          backgroundColor: Colors.grey,
          child: ImageShow.imgAsset(AppImages.icProfilePic),
        ),
        const SizedBox(height: 12),
        Text('Lia Thomas', style: AppStyle.text16SemiBoldBlack26),
        const SizedBox(height: 6),
        Text('lia.thomas516@reddit.com', style: AppStyle.text12MediumBlack26),
        Text('+1 212-450-7890', style: AppStyle.text12MediumBlack26),
        const SizedBox(height: 12),
        CustomElevatedButton(title: 'Add Tags', onPress: () {}),
      ],
    );
  }

  Widget _statsCard(bool isSmall) {
    final stats = [
      {'label': 'Last Visit', 'value': '-- -- --'},
      {'label': 'Average Spend', 'value': '\$0.00'},
      {'label': 'Lifetime Spend', 'value': '\$0.00'},
      {'label': 'Total Orders', 'value': '0'},
      {'label': 'Average Tip', 'value': '\$0.00'},
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteF8,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(stats.length * 2 - 1, (index) {
          if (index.isOdd) {
            // Divider between items
            return Container(
              width: 1,
              height: 40,
              color: AppColors.black26.withOpacity(0.2), // customize color
              margin: const EdgeInsets.symmetric(horizontal: 8),
            );
          }
          final stat = stats[index ~/ 2];
          return Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(stat['value'] ?? '', style: AppStyle.text16SemiBoldBlack26),
                const SizedBox(height: 10),
                Text(stat['label'] ?? '', style: AppStyle.text12MediumBlack26),
              ],
            ),
          );
        }),
      ),
    );
  }


  Widget _cardsStacked(double height) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: height * 0.6,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: AppColors.whiteF8, borderRadius: BorderRadius.circular(10)),
          child: _buildPersonalInfo(),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Container(
                height: height * 0.4,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: AppColors.whiteF8, borderRadius: BorderRadius.circular(10)),
                child: _buildLoyaltySection(),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Container(
                height: height * 0.4,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: AppColors.whiteF8, borderRadius: BorderRadius.circular(10)),
                child: _buildVisitsSection(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTab(String text, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF666666) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? AppColors.white : AppColors.black26,
          fontSize: 16,
          fontFamily: isActive ? FontName.montserratSemiBold : FontName.montserratMedium,
        ),
      ),
    );
  }

  Widget _buildPersonalInfo() {
    final info = [
      {'label': 'Loyalty', 'value': 'RF|'},
      {'label': 'Since', 'value': 'Enter'},
      {'label': 'Birthday', 'value': 'Enter'},
      // {'label': 'Anniversary', 'value': 'Enter'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: info.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item['label']!, style: AppStyle.text14MediumGray60),
                  Text(
                    item['value']!,
                    style: TextStyle(
                      color: item['label'] == 'Loyalty' ? AppColors.black26 : AppColors.whiteD2,
                      fontSize: 14,
                      fontWeight: item['label'] == 'Loyalty' ? FontWeight.w600 : FontWeight.w500,
                      fontFamily: item['label'] == 'Loyalty' ? FontName.montserratSemiBold : FontName.montserratMedium,
                    ),
                  ),
                ],
              ),
              const Divider(),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLoyaltySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('LOYALTY', style: AppStyle.text14MediumGray8B),
        const SizedBox(height: 14),
        Row(children: [
          _buildStatItem('0', 'Earned'),
          const SizedBox(width: 10),
          Container(width: 1, height: 48, color: Colors.grey.shade300),
          const SizedBox(width: 10),
          _buildStatItem('0', 'Redeemed'),
        ]),
        const SizedBox(height: 9),
        Row(children: [
          _buildStatItem('0', 'Available'),
          const SizedBox(width: 10),
          Container(width: 1, height: 46, color: Colors.grey.shade300),
          const SizedBox(width: 10),
          _buildStatItem('\$ 00.00', 'Amount'),
        ]),
      ],
    );
  }

  Widget _buildVisitsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('VISITS', style: AppStyle.text14MediumGray8B),
        const SizedBox(height: 14),
        Row(children: [
          _buildStatItem('0', 'Total Visits'),
          const SizedBox(width: 10),
          Container(width: 1, height: 48, color: Colors.grey.shade300),
          const SizedBox(width: 10),
          _buildStatItem('0', 'Upcoming'),
        ]),
        const SizedBox(height: 9),
        Row(children: [
          _buildStatItem('0', 'Canceled'),
          const SizedBox(width: 10),
          Container(width: 1, height: 46, color: Colors.grey.shade300),
          const SizedBox(width: 10),
          _buildStatItem('0', 'No Shows'),
        ]),
      ],
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: AppStyle.text16SemiBoldBlack26, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 5),
        Text(label, style: AppStyle.text11MediumBlack26, overflow: TextOverflow.ellipsis),
      ],
    );
  }

  Widget _buildSectionCard(String title, String content, String icon, String? buttonText) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 8), child: Text(title, style: AppStyle.text16MediumGray8B)),
          const SizedBox(height: 8),
          Container(
            constraints: const BoxConstraints(minHeight: 88),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ImageShow.svgImgAsset(icon),
                  const SizedBox(width: 20),
                  Container(width: 2, height: 64, decoration: BoxDecoration(color: AppColors.gray93, borderRadius: BorderRadius.circular(40))),
                  const SizedBox(width: 20),
                  Expanded(child: Text(content, style: AppStyle.text14SemiBoldBlack26)),
                  if (buttonText != null) ...[
                    const SizedBox(width: 12),
                    CustomElevatedButton(title: buttonText, onPress: () {}),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotesSection() {
    final notesSections = [
      {'title': 'General', 'icon': AppImages.icNote},
      {'title': 'Special Relation', 'icon': AppImages.icStar},
      {'title': 'Seating Preferences', 'icon': AppImages.icSeating},
      {'title': 'Special Note*', 'icon': AppImages.icSpecialNote},
      {'title': 'Allergies', 'icon': AppImages.icNoOrderItem},
    ];

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 8), child: Text('NOTES', style: AppStyle.text16MediumGray8B)),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: notesSections.map((section) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 72,
                        child: Row(
                          children: [
                            ImageShow.svgImgAsset(section['icon'].toString()),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(section['title'] as String, style: AppStyle.text16SemiBoldBlack26),
                                  const SizedBox(height: 6),
                                  Text('Add notes', style: AppStyle.text14MediumWhiteD2),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (section != notesSections.last) Container(height: 2, color: Colors.grey.shade200),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
