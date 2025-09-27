import 'package:flutter/material.dart';
import 'package:guestbook/core/theme/app_style.dart';
import 'package:guestbook/core/theme/colors.dart';
import 'package:guestbook/core/utils/app_image.dart';
import 'package:guestbook/core/model/contact_model.dart';
import 'package:guestbook/core/widgets/button/custom_Icon_btn.dart';
import '../utils/responsive.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = Responsive.sidebarWidth(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 260,
        maxWidth: width,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 16, top: 24, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios, color: AppColors.gray60),
                ),
                const SizedBox(width: 4),
                Text('Settings', style: AppStyle.text22MediumGray60),
              ],
            ),
            const SizedBox(height: 18),
            Container(
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0x1F767680),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppStyle.text17MediumGray7,
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  prefixIcon: Icon(Icons.search, size: 20, color: AppColors.gray7),
                  suffixIcon: Icon(Icons.mic, size: 20, color: AppColors.gray7),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                CustomIconButton(
                  icon: AppImages.icPlus,
                  backgroundColor: AppColors.black26,
                  onTap: () {},
                ),
                const SizedBox(width: 12),
                CustomIconButton(
                  icon: AppImages.icArchive,
                  backgroundColor: AppColors.gray9,
                  onTap: () {},
                ),
                const Spacer(),
                CustomIconButton(
                  icon: AppImages.icFitter,
                  backgroundColor: AppColors.gray80.withOpacity(0.1),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Make the contact list expand to remaining space
            Container(
              height: MediaQuery.of(context).size.height/2.7,
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: ContactModel.sampleContacts.length,
                separatorBuilder: (_, __) =>
                    Divider(height: 1, color: AppColors.gray9B),
                itemBuilder: (context, index) {
                  final contact = ContactModel.sampleContacts[index];

                  return InkWell(
                    onTap: () {
                      // handle selection logic
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      color: contact.isSelected
                          ? AppColors.gray80.withOpacity(0.12)
                          : Colors.transparent,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.grey.shade300,
                            child: contact.initials != null
                                ? Text(contact.initials!,
                                style: AppStyle.text20MediumWhite)
                                : const Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(contact.name, style: AppStyle.text16SemiBoldBlack26),
                                const SizedBox(height: 4),
                                Text(contact.email, style: AppStyle.text12MediumBlack26),
                                const SizedBox(height: 2),
                                Text(contact.phone, style: AppStyle.text12MediumBlack26),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
