// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';

void main() {
  runApp(const AtlasGeoApp());
}

class AtlasGeoApp extends StatelessWidget {
  const AtlasGeoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas Géographique',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
        cardTheme: CardThemeData(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
