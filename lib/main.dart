import 'package:flutter/material.dart';
import 'home_page.dart';
import 'test_ios_preview.dart';

void main() {
  // Normal app için bu satırı kullan
  // runApp(const MyApp());
  
  // iOS test için bu satırı kullan
  runApp(const TestApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TDSB KPSS',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
