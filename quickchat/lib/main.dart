import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

import 'pages/login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'QuickChat',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(42, 117, 188, 1),
        colorScheme: theme.colorScheme.copyWith(
        brightness: Brightness.dark,
        secondary: Color.fromRGBO(42, 117, 188, 1),
      ),
        scaffoldBackgroundColor: Color.fromRGBO(28, 27, 27, 1),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

