import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';
import 'package:login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      // home: const LoginPage(),
      
      // Two pages routes
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}
