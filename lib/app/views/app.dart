import 'package:flutter/material.dart';
import 'package:resume_app/app_theme.dart';
import 'package:resume_app/resume/resume.dart';

/// The entry pint for the App
class ResumeApp extends StatelessWidget {
  /// Constructor
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),
      home: const ResumeView(),
    );
  }
}
