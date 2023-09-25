import 'package:doctorapp/screens/doctor_detail_screen.dart';
import 'package:doctorapp/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

import 'doctor_app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: DoctoAppTheme.lightTheme,
      initialRoute: 'homeRoute',
      routes: {
        'homeRoute': (context) => const HomePage(),
        'DoctorDetail': (context) => const DoctorDetail(),
      },
    );
  }
}
