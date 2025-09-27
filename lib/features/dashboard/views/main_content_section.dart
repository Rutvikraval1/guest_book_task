import 'package:flutter/material.dart';
import 'package:guestbook/core/theme/app_style.dart';
import 'package:guestbook/core/theme/colors.dart';
import 'package:guestbook/core/utils/app_image.dart';
import 'package:guestbook/core/widgets/asset_img/asset_image_show.dart';

import '../../../core/widgets/button/custom_elevated_btn.dart';

class MainContentSection extends StatefulWidget {
  const MainContentSection({super.key});

  @override
  State<MainContentSection> createState() => _MainContentSectionState();
}

class _MainContentSectionState extends State<MainContentSection> {
  int selectedIndex = 0;

  final List<String> tabs = [
    'Profile',
    'Reservation',
    'Payment',
    'Feedback',
    'Order History',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 24, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageShow.svgImgAsset(AppImages.icGuestBook, height: 45),
                  const SizedBox(height: 12),
                  Text('Guest Book', style: AppStyle.text16SemiBoldBlack26),
                  const SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'The guest book feature remembers your guests dietary needs, allergies, and favorite'
                      'dishes. It organizes dining preferences for a customized and memorable'
                      'experience, ensuring each visit is tailored to their individual needs.',
                      textAlign: TextAlign.center,
                      style: AppStyle.text16RegularGray4E,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: _buildTab(tabs[index], selectedIndex == index),
                    );
                  },
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
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey,
                            child: ImageShow.imgAsset(AppImages.icProfilePic),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Lia Thomas',
                            style: AppStyle.text16SemiBoldBlack26,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'lia.thomas516@reddit.com',
                            style: AppStyle.text12MediumBlack26,
                          ),
                          Text(
                            '+1 212-450-7890',
                            style: AppStyle.text12MediumBlack26,
                          ),
                          const SizedBox(height: 16),
                          CustomElevatedButton(
                            title: 'Add Tags',
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: const Color(0x4D8E8E93),
                      thickness: 2,
                      endIndent: 10,
                      indent: 10,
                      width: 2,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColors.whiteF8,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: _buildStatsRow(),
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // width: MediaQuery.of(context).size.width/8,
                                  height: MediaQuery.of(context).size.height/3,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteF8,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: _buildPersonalInfo(),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/8,
                                  height: MediaQuery.of(context).size.height/3,
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteF8,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: _buildLoyaltySection(),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/8,
                                  height: MediaQuery.of(context).size.height/3,
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteF8,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: _buildVisitsSection(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 31),
            // Allergies section
            _buildSectionCard(
              'ALLERGIES',
              'No Allergies',
              AppImages.icKitchen,
              'Add',
            ),
            const SizedBox(height: 24),
            // Upcoming visits section
            _buildSectionCard(
              'UPCOMING VISITS',
              'No Upcoming Visits',
              AppImages.icStore,
              'Book A Visit',
            ),
            const SizedBox(height: 25),
            // Notes section
            _buildNotesSection(),
            const SizedBox(height: 23),
            // Recent orders section
            _buildSectionCard(
              'RECENT ORDERS',
              'No Recent Orders to Show',
              AppImages.icDinner,
              null,
            ),
            const SizedBox(height: 24),
            _buildSectionCard(
              'Online reviews',
              'No Online Review to Show',
              AppImages.icNoReview,
              null,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF666666) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? AppColors.white : AppColors.black26,
          fontSize: 16,
          fontFamily: isActive
              ? FontName.montserratSemiBold
              : FontName.montserratMedium,
        ),
      ),
    );
  }

  Widget _buildStatsRow() {
    final stats = [
      {'label': 'Last Visit', 'value': '-- -- --'},
      {'label': 'Average Spend', 'value': '\$0.00'},
      {'label': 'Lifetime Spend', 'value': '\$0.00'},
      {'label': 'Total Orders', 'value': '0'},
      {'label': 'Average Tip', 'value': '\$0.00'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: stats.map((stat) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(stat['value']!, style: AppStyle.text16SemiBoldBlack26),
            const SizedBox(height: 12),
            Text(stat['label']!, style: AppStyle.text12MediumBlack26),
          ],
        );
      }).toList(),
    );
  }

  Widget  _buildPersonalInfo() {
    final info = [
      {'label': 'Loyalty', 'value': 'RF|'},
      {'label': 'Since', 'value': 'Enter'},
      {'label': 'Birthday', 'value': 'Enter'},
      {'label': 'Anniversary', 'value': 'Enter'},
    ];

    return Column(
      children: info.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['label']!,
                    style: AppStyle.text14MediumGray60
                  ),
                  Text(
                    item['value']!,
                    style: TextStyle(
                      color: item['label'] == 'Loyalty'
                          ? AppColors.black26
                          : AppColors.whiteD2,
                      fontSize: 14,
                      fontWeight: item['label'] == 'Loyalty'
                          ? FontWeight.w600
                          : FontWeight.w500,
                      fontFamily: item['label'] == 'Loyalty'?
                      FontName.montserratSemiBold: FontName.montserratMedium,
                    ),
                  ),
                ],
              ),
              Divider()
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
         Text(
          'LOYALTY',
          style: AppStyle.text14MediumGray8B,
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            _buildStatItem('0', 'Earned'),
            const SizedBox(width: 10),
            Container(width: 1, height: 48, color: Colors.grey.shade300),
            const SizedBox(width: 10),
            _buildStatItem('0', 'Redeemed'),
          ],
        ),
        const SizedBox(height: 9),
        Row(
          children: [
            _buildStatItem('0', 'Available'),
            const SizedBox(width: 10),
            Container(width: 1, height: 46, color: Colors.grey.shade300),
            const SizedBox(width: 10),
            _buildStatItem('\$ 00.00', 'Amount'),
          ],
        ),
      ],
    );
  }

  Widget _buildVisitsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'VISITS',
          style: AppStyle.text14MediumGray8B,
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            _buildStatItem('0', 'Total Visits'),
            const SizedBox(width: 10),
            Container(width: 1, height: 48, color: Colors.grey.shade300),
            const SizedBox(width: 10),
            _buildStatItem('0', 'Upcoming'),
          ],
        ),
        const SizedBox(height: 9),
        Row(
          children: [
            _buildStatItem('0', 'Canceled'),
            const SizedBox(width: 10),
            Container(width: 1, height: 46, color: Colors.grey.shade300),
            const SizedBox(width: 10),
            _buildStatItem('0', 'No Shows'),
          ],
        ),
      ],
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: AppStyle.text16SemiBoldBlack26,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: AppStyle.text11MediumBlack26,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildSectionCard(
    String title,
    String content,
      String icon,
    String? buttonText,
  ) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: AppStyle.text16MediumGray8B,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 96,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(27),
              child: Row(
                children: [
                  ImageShow.svgImgAsset(icon),
                  const SizedBox(width: 25),
                  Container(
                    width: 2,
                    height: 64,
                    decoration: BoxDecoration(
                      color: AppColors.gray93,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      content,
                      style: AppStyle.text14SemiBoldBlack26
                    ),
                  ),
                  if (buttonText != null)
                   CustomElevatedButton(title: buttonText, onPress: (){})
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
      {'title': 'Seating Preferences', 'icon':AppImages.icSeating},
      {'title': 'Special Note*', 'icon': AppImages.icSpecialNote},
      {'title': 'Allergies', 'icon': AppImages.icNoOrderItem},
    ];

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'NOTES',
              style:AppStyle.text16MediumGray8B
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: notesSections.map((section) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 72,
                        child: Row(
                          children: [
                            ImageShow.svgImgAsset(section['icon'].toString()),
                            const SizedBox(width: 26),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    section['title'] as String,
                                    style: AppStyle.text16SemiBoldBlack26,
                                  ),
                                  const SizedBox(height: 8),
                                   Text(
                                    'Add notes',
                                    style:AppStyle.text14MediumWhiteD2 ,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (section != notesSections.last)
                        Container(height: 2, color: Colors.grey.shade200),
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
