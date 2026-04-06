import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/datas/icons.dart';
import 'package:flutter_application_1/theme.dart';

class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 180, // Tinggi diperbesar agar teks tidak terpotong
        child: GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          children: menuIcons.map((item) {
            return Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: item.color, // Warna background solid
                    borderRadius: BorderRadius.circular(20), // Circular 20
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/${item.icon}.svg',
                      color: Colors.white, // Icon putih
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  item.title,
                  style: regular12_5.copyWith(color: dark2),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
