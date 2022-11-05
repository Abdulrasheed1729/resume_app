import 'package:flutter/material.dart';
import 'package:resume_app/views/views.dart';

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),
      home: HomePage(),
    );
  }
}
