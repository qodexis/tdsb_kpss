import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iOS Test',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: SizedBox(
            width: 393,  // iPhone 14 Pro genişliği
            height: 852, // iPhone 14 Pro yüksekliği
            child: HomePage(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
