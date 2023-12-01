import 'package:flutter/material.dart';

/// App Requirement
///
/// Create an application with 2 pages
///
/// 1. A login page with the following requirements
/// - It has a title called [Login]
/// - It has an email form field and a password form field
/// - It has a button which is disabled by default
/// - If email is either empty or invalid or password is empty or less than 6 characters
/// - Button remains disabled
/// - Otherwise button is enabled
/// - When the button is clicked, navigate to home page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Testing Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(),
    );
  }
}
