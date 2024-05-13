import 'package:adstacks_assignment/screen/homepage.dart';
import 'package:adstacks_assignment/screen/responsive/mobile_screen.dart';
import 'package:adstacks_assignment/screen/responsive/tab_screen.dart';
import 'package:adstacks_assignment/screen/responsive/responsiv_layout.dart';
import 'package:adstacks_assignment/screen/responsive/small_web_screen.dart';
import 'package:adstacks_assignment/screen/responsive/web_screen.dart';
import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adstacks assignment',
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        listTileTheme: const ListTileThemeData(
          selectedTileColor: scaffoldBackgroundColor,
          textColor: Colors.black,
          selectedColor: Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
          ),
        ),
      ),
      home: ResponsiveLayout(
        webScreenlayout: const WebScreen(),
        tabScreenlayout: const TabScreen(),
        mobileScreenlayout: const MobileScreen(),
        smallweblayout: const SmallWeb(),
      ),
    );
  }
}
