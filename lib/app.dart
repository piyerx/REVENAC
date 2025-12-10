import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home/home_screen.dart';

class RevenacApp extends StatelessWidget {
  const RevenacApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REVENAC',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // Temp home until we implement the AppScaffold/BottomNav
      home: const Scaffold(
        body: Center(child: Text("Revenac Setup Complete")),
      ),
    );
  }
}