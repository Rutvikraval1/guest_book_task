import 'package:flutter/material.dart';

class MainContentSection extends StatelessWidget {
  const MainContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 27, top: 83),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Guest Book Header Card
            Container(
              width: double.infinity,
              height: 215,
              margin: const EdgeInsets.only(right: 27),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: const Icon(Icons.book, size: 30, color: Colors.grey),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Guest Book',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'The guest book feature remembers your guests\' dietary needs, allergies, and favorite\ndishes. It organizes dining preferences for a customized and memorable\nexperience, ensuring each visit is tailored to their individual needs.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF44474E),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Tabs
            Container(
              width: 623,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  _buildTab('Profile', true),
                  _buildTab('Reservation', false),
                  _buildTab('Payment', false),
                  _buildTab('Feedback', false),
                  _buildTab('Order History', false),
                ],
              ),
            ),
            const SizedBox(height: 18),
            // Profile Card
            Container(
              width: double.infinity,
              height: 364,
              margin: const EdgeInsets.only(right: 27),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  // Vertical divider
                  Positioned(
                    top: 16,
                    left: 221,
                    child: Container(
                      width: 2,
                      height: 332,
                      decoration: BoxDecoration(
                        color: const Color(0x4D8E8E93),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  // Profile section
                  Positioned(
                    top: 68,
                    left: 10,
                    child: SizedBox(
                      width: 207,
                      height: 196,
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Lia Thomas',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'lia.thomas516@reddit.com',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const Text(
                            '+1 212-450-7890',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF212121),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            child: const Text(
                              'Add Tags',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Stats section
                  Positioned(
                    top: 16,
                    left: 238,
                    child: Container(
                      width: 570,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: _buildStatsRow(),
                    ),
                  ),
                  // Personal info section
                  Positioned(
                    top: 118,
                    left: 238,
                    child: Container(
                      width: 168,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: _buildPersonalInfo(),
                    ),
                  ),
                  // Loyalty section
                  Positioned(
                    top: 118,
                    left: 451,
                    child: Container(
                      width: 174,
                      height: 160,
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _buildLoyaltySection(),
                    ),
                  ),
                  // Visits section
                  Positioned(
                    top: 118,
                    left: 638,
                    child: Container(
                      width: 170,
                      height: 160,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _buildVisitsSection(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 31),
            // Allergies section
            _buildSectionCard(
              'ALLERGIES',
              'No Allergies',
              Icons.local_hospital,
              'Add',
            ),
            const SizedBox(height: 24),
            // Upcoming visits section
            _buildSectionCard(
              'UPCOMING VISITS',
              'No Upcoming Visits',
              Icons.calendar_today,
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
              Icons.receipt,
              null,
            ),
            const SizedBox(height: 24),
            // Online reviews section
            _buildOnlineReviewsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text, bool isActive) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF666666) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
              fontFamily: 'Montserrat',
            ),
          ),
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
            Text(
              stat['value']!,
              style: const TextStyle(
                color: Color(0xFF212121),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 12),
            Text(
              stat['label']!,
              style: const TextStyle(
                color: Color(0xFF212121),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildPersonalInfo() {
    final info = [
      {'label': 'Loyalty', 'value': 'RF|'},
      {'label': 'Since', 'value': 'Enter'},
      {'label': 'Birthday', 'value': 'Enter'},
      {'label': 'Anniversary', 'value': 'Enter'},
    ];

    return Column(
      children: info.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item['label']!,
                style: const TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
              Text(
                item['value']!,
                style: TextStyle(
                  color: item['label'] == 'Loyalty'
                      ? const Color(0xFF212121)
                      : const Color(0xFFD2D2D2),
                  fontSize: 14,
                  fontWeight: item['label'] == 'Loyalty'
                      ? FontWeight.w600
                      : FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
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
        const Text(
          'LOYALTY',
          style: TextStyle(
            color: Color(0xFF85858B),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
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
        const Text(
          'VISITS',
          style: TextStyle(
            color: Color(0xFF85858B),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
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
          style: const TextStyle(
            color: Color(0xFF212121),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF212121),
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
      ],
    );
  }

  Widget _buildSectionCard(String title, String content, IconData icon, String? buttonText) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF85858B),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
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
                  Icon(icon, size: 32, color: Colors.grey),
                  const SizedBox(width: 25),
                  Container(
                    width: 2,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color(0x4D8E8E93),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      content,
                      style: const TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  if (buttonText != null)
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF212121),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
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
      {'title': 'General', 'icon': Icons.note},
      {'title': 'Special Relation', 'icon': Icons.favorite},
      {'title': 'Seating Preferences', 'icon': Icons.table_restaurant},
      {'title': 'Special Note*', 'icon': Icons.star},
      {'title': 'Allergies', 'icon': Icons.warning},
    ];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'NOTES',
              style: TextStyle(
                color: Color(0xFF85858B),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 377,
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
                            Icon(section['icon'] as IconData, size: 18, color: Colors.grey),
                            const SizedBox(width: 26),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    section['title'] as String,
                                    style: const TextStyle(
                                      color: Color(0xFF212121),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Add notes',
                                    style: TextStyle(
                                      color: Color(0xFFD2D2D2),
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
                      if (section != notesSections.last)
                        Container(
                          height: 2,
                          color: Colors.grey.shade200,
                        ),
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

  Widget _buildOnlineReviewsSection() {
    final reviews = [
      {'platform': 'Google', 'review': 'The food was absolutely delicious and served with great presentation. The staff were friendly and attentive.'},
      {'platform': 'Yelp', 'review': 'The service was prompt and attentive, making our evening enjoyable. Highly recommend this gem.'},
      {'platform': 'Foursquare', 'review': 'I highly recommend trying their Japan Chicken. it was bursting with flavor.'},
      {'platform': 'Zagat', 'review': 'The food was absolutely delicious and served with great presentation. The staff were friendly and attentive.'},
      {'platform': 'Custom', 'review': 'The service was prompt and attentive, making our evening enjoyable. Highly recommend this gem.'},
    ];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'ONLINE REVIEWS',
              style: TextStyle(
                color: Color(0xFF85858B),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 228,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: reviews.map((review) {
                    return Container(
                      width: 241,
                      height: 168,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: const Icon(Icons.star, color: Colors.orange),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 16,
                                );
                              }),
                            ),
                            const SizedBox(height: 12),
                            Expanded(
                              child: Text(
                                review['review']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}