import 'package:flutter/material.dart';
import 'package:google_clone_flutter/colors.dart';
import 'package:google_clone_flutter/responsive/mobile_screen_layout.dart';
import 'package:google_clone_flutter/responsive/responsive_layout_screen.dart';
import 'package:google_clone_flutter/responsive/web_screen_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      title: 'Google Clone',
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),

    );
  }
}