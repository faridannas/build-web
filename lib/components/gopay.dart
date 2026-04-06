import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/datas/icons.dart';
import 'package:flutter_application_1/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Container(
        height: 96,
        decoration: BoxDecoration(
          color: blue1, // Warna biru khas theme gopay
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Decoration dots/lines overlay could be here
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  // Bagian Kiri: Saldo Container Putih
                  Container(
                    width: 140,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/gopay.png', height: 12),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text('Rp12.379', style: bold16.copyWith(fontSize: 16)),
                        const SizedBox(height: 2),
                        Text(
                          'Klik & cek riwayat',
                          style: semibold12_5.copyWith(
                            color: green1,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Bagian Kanan: Menu Actions
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: gopayIcons.map((item) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon didalam kotak putih
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // Icon biru
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SvgPicture.asset(
                                  'assets/icons/${item.icon}.svg',
                                  color: blue1,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.title,
                              style: semibold14.copyWith(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
