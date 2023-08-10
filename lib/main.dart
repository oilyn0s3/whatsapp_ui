import 'package:flutter/material.dart';
import 'layouts/responsive_layout.dart';
import 'screens/mobile.dart';
import 'screens/web.dart';
import 'const/colors.dart';

void main() {
  runApp(const MainApp());
}

final theme = ThemeData.dark();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          background: backgroundColor,
        ),
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const Scaffold(
        body: ResponsiveLayout(
          mobileLayout: MobileLayout(),
          webLayout: WebLayout(),
        ),
      ),
    );
  }
}
