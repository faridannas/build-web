import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/components/search.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120); // 50 (navbar) + 70 (search)

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: green1, // Hijau Gojek
      elevation: 0,
      toolbarHeight: 60, // Tinggi area tab menu
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTabItem('Beranda', isActive: true),
            _buildTabItem('Promo'),
            _buildTabItem('Pesanan'),
            _buildTabItem('Chat'),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Search(),
        ),
      ),
    );
  }

  Widget _buildTabItem(String title, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            : null,
      ),
      child: Text(
        title,
        style: semibold14.copyWith(color: isActive ? green1 : Colors.white),
      ),
    );
  }
}
