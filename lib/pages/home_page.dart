import 'package:flutter/material.dart';
import 'package:flutter_application_1/datas/news.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/components/header.dart';
import 'package:flutter_application_1/components/gopay.dart';
import 'package:flutter_application_1/components/menus.dart';
import 'package:flutter_application_1/components/goclub.dart';
import 'package:flutter_application_1/components/akses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gopay Section (Model baru: Biru Rounded menyatu)
            const Gopay(),

            // Menu Icons Grid
            const Menus(),

            // XP Harta Karun Banner (Menggantikan GopayLater lama)
            const GoClub(),

            // Akses Cepat
            const Akses(),

            // Promo Banner Bawah (GopayLater lama geser kesini)
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/gopaylater.png',
                    height: 14,
                    errorBuilder: (ctx, err, stack) =>
                        const Icon(Icons.wallet, size: 14, color: Colors.blue),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Lebih hemat pake GoPayLater 🤩',
                    style: bold16.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),

            // News Section (Original content, just moved the GopayLater promo)
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/gopay.png',
                    height: 14,
                    errorBuilder: (c, e, s) => Text('gopay', style: bold16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lebih hemat pake GoPay',
                    style: bold18.copyWith(color: dark1),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Diskon, cashback, dan promo menarik lainnya!',
                    style: regular14.copyWith(color: dark2),
                  ),
                ],
              ),
            ),

            // Horizontal Scrollable News
            Container(
              height: 320,
              margin: const EdgeInsets.only(top: 20),
              child: ListView.builder(
                itemCount: news.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 15, right: 10),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0xFFE8E8E8)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            'assets/images/${news[index].image}',
                            height: 170,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (c, e, s) => Container(
                              height: 170,
                              color: Colors.grey[300],
                              child: const Center(child: Icon(Icons.image)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                news[index].title,
                                style: bold16.copyWith(color: dark1),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                news[index].description,
                                style: regular14.copyWith(color: dark2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
