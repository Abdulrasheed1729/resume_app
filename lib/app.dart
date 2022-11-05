import 'package:flutter/material.dart';
import 'package:resume_app/views/views.dart';

/// The entry pint for the App
class ResumeApp extends StatelessWidget {
  /// Constructor
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Resume App',
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),
      home: HomePage(),
    );
  }
}
