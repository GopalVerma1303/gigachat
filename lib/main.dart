import 'package:flutter/material.dart';
import 'package:gigachat/colors.dart';
import 'package:gigachat/responsive/responsiveLayout.dart';
import 'package:gigachat/screens/mobileScreenLayout.dart';
import 'package:gigachat/screens/webScreenLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const responsiveLayout(
        mobileScreenLayout: mobileScreenLayout(),
        webScreenLayout: webScreenLayout(),
      ),
    );
  }
}
