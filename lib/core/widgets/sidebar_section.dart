import 'package:flutter/material.dart';

import '../../core/model/contact_model.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      margin: const EdgeInsets.only(left: 28, top: 24),
      child: Column(
        children: [
          // Header with search
          Container(
            height: 105,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back, color: Color(0xFF666666)),
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
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
                  child: const Row(
                    children: [
                      SizedBox(width: 12),
                      Icon(Icons.search, color: Color(0x9976767A)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Color(0x9976767A),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                      Icon(Icons.mic, color: Color(0x9976767A)),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 61),
          // Action buttons
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 30),
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list, size: 30),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, size: 30),
              ),
            ],
          ),
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