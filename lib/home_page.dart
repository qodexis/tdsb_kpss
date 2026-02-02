import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        title: const Text(
          'Tüm Dersler - SB',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CountdownSection(),
            SizedBox(height: 24),
            _CoursesSection(),
            SizedBox(height: 24),
            _PhotoSolveCard(),
          ],
        ),
      ),
    );
  }
}

class _CountdownSection extends StatelessWidget {
  const _CountdownSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          _CountdownItem(days: 215, level: 'Lisans'),
          const SizedBox(height: 12),
          _CountdownItem(days: 243, level: 'Ön Lisans'),
          const SizedBox(height: 12),
          _CountdownItem(days: 264, level: 'Ortaöğr.'),
          const SizedBox(height: 12),
          _CountdownItem(days: 159, level: 'AGS'),
        ],
      ),
    );
  }
}

class _CountdownItem extends StatelessWidget {
  final int days;
  final String level;

  const _CountdownItem({
    required this.days,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$days Gün',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          level,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class _CoursesSection extends StatelessWidget {
  const _CoursesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DERSLER',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        _CourseItem(
          title: 'Türkçe',
          color: Colors.red,
          icon: 'T',
        ),
        const SizedBox(height: 12),
        _CourseItem(
          title: 'Tarih',
          color: Colors.yellow,
          icon: 'T',
        ),
        const SizedBox(height: 12),
        _CourseItem(
          title: 'Matematik',
          color: Colors.blue,
          icon: Icons.description,
        ),
        const SizedBox(height: 12),
        _CourseItem(
          title: 'Coğrafya',
          color: Colors.green,
          icon: Icons.refresh,
        ),
        const SizedBox(height: 12),
        _CourseItem(
          title: 'Vatandaşlık',
          color: Colors.purple,
          icon: Icons.change_history,
        ),
      ],
    );
  }
}

class _CourseItem extends StatelessWidget {
  final String title;
  final Color color;
  final dynamic icon;

  const _CourseItem({
    required this.title,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: icon is String
                  ? Text(
                      icon,
                      style: TextStyle(
                        color: color,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Icon(
                      icon as IconData,
                      color: color,
                      size: 24,
                    ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 16,
          ),
        ],
      ),
    );
  }
}

class _PhotoSolveCard extends StatelessWidget {
  const _PhotoSolveCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.blue,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Fotoğrafla Soru Çöz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 16,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              _OptionChip(title: 'Fotoğraf', isSelected: false),
              SizedBox(width: 12),
              _OptionChip(title: 'Adım Adım', isSelected: false),
              SizedBox(width: 12),
              _OptionChip(title: 'Detaylı', isSelected: true),
            ],
          ),
        ],
      ),
    );
  }
}

class _OptionChip extends StatelessWidget {
  final String title;
  final bool isSelected;

  const _OptionChip({
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey,
          width: 1,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontSize: 14,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }
}
