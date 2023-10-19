import 'package:flutter/material.dart';
import 'package:getaways_flutter/assets/palette.dart';
import 'package:getaways_flutter/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mindful Getaways",
      theme: ThemeData(
          scaffoldBackgroundColor: ColorPalette.darkShade,
          colorScheme:
              const ColorScheme.light(primary: ColorPalette.lightShade)),
      home: const AuthScreen(),
    );
  }
}
