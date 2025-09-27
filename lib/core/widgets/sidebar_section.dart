import 'package:flutter/material.dart';
import 'package:guestbook/core/theme/app_style.dart';
import 'package:guestbook/core/theme/colors.dart';
import 'package:guestbook/core/utils/app_image.dart';

import '../../core/model/contact_model.dart';
import 'button/custom_Icon_btn.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      margin: const EdgeInsets.only(left: 28, top: 24,right: 28),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon:  Icon(Icons.arrow_back_ios, color: AppColors.gray60),
              ),
               Text(
                'Settings',
                style: AppStyle.text22MediumGray60,
              ),
            ],
          ),
          const SizedBox(height: 20),
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
                border: InputBorder.none, // remove underline
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                prefixIcon:  Icon(
                  Icons.search,
                  size: 20,
                  color: AppColors.gray7,
                ),
                suffixIcon:  Icon(
                  Icons.mic,
                  size: 20,
                  color: AppColors.gray7,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              CustomIconButton(
                icon: AppImages.icPlus,
                backgroundColor: AppColors.black26,
                onTap: () {
                },
              ),
              const SizedBox(width: 15),
              CustomIconButton(
                icon: AppImages.icArchive,
                backgroundColor: AppColors.gray9,
                onTap: () {
                },
              ),
              const Spacer(),
              CustomIconButton(
                icon: AppImages.icFitter,
                backgroundColor: AppColors.gray80.withOpacity(0.1),
                onTap: () {
                },
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Contacts list
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(
                itemCount: ContactModel.sampleContacts.length,
                itemBuilder: (context, index) {
                  final contact = ContactModel.sampleContacts[index];
                  return Container(
                    height: 99,
                    decoration: BoxDecoration(
                      color: contact.isSelected
                          ? const Color(0x1F767680)
                          : Colors.white,
                      border: index < ContactModel.sampleContacts.length - 1
                          ? const Border(bottom: BorderSide(color: Color(0xFFB9B9BB)))
                          : null,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: contact.initials != null
                                ? Text(
                              contact.initials!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                                : const Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  contact.name,
                                  style: const TextStyle(
                                    color: Color(0xFF212121),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  contact.email,
                                  style: const TextStyle(
                                    color: Color(0xFF212121),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  contact.phone,
                                  style: const TextStyle(
                                    color: Color(0xFF212121),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }
}