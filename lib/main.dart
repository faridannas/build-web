import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Clone',
      theme: ThemeData(
        primarySwatch: Colors.green, // Fallback
        colorScheme: ColorScheme.fromSeed(seedColor: green1),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
