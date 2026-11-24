import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const TaskNestApp());
}

class TaskNestApp extends StatelessWidget {
  const TaskNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskNest',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
