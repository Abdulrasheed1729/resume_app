import 'package:flutter/material.dart';
import 'package:resume_app/resume/resume.dart';

/// The entry pint for the App
class ResumeApp extends StatelessWidget {
  /// Constructor
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ResumeView(),
    );
  }
}
