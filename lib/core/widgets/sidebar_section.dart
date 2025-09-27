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
          Container(
            height: MediaQuery.of(context).size.height/2.3,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: ContactModel.sampleContacts.length,
              padding:EdgeInsets.zero,
              itemBuilder: (context, index) {
                final contact = ContactModel.sampleContacts[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: index < ContactModel.sampleContacts.length - 1?
                    BorderRadius.vertical(top: Radius.circular(12)):null,
                    color: contact.isSelected
                        ? AppColors.gray80.withOpacity(0.12)
                        : AppColors.white,
                    border: index < ContactModel.sampleContacts.length - 1
                        ?  Border(bottom: BorderSide(color: AppColors.gray9B))
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
                            style: AppStyle.text20MediumWhite,
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
                                style: AppStyle.text22MediumBlack26
                              ),
                              const SizedBox(height: 3),
                              Text(
                                contact.email,
                                style: AppStyle.text14MediumBlack26
                              ),
                              Text(
                                contact.phone,
                                 style: AppStyle.text14MediumBlack26
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
        ],
      ),
    );
  }
}