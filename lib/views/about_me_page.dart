import 'package:flutter/material.dart';
import 'package:resume_app/core/core.dart';
import 'package:resume_app/widgets/widgets.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('About me'),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const SizedBox(height: 25),
            const DecoratedBox(
              decoration: BoxDecoration(),
              child: Text(
                AppText.aboutmeText,
                style: TextStyle(
                  wordSpacing: .5,
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'Skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5.0),
            Wrap(
              spacing: 8.0,
              children: const [
                SkillsChip(text: 'Flutter'),
                SkillsChip(text: 'Dart'),
                SkillsChip(text: 'C\\C++'),
                SkillsChip(text: 'Go'),
                SkillsChip(text: 'Vim'),
                SkillsChip(text: 'Firebase'),
                SkillsChip(text: 'Linux'),
                SkillsChip(text: 'Shell scripting'),
                SkillsChip(text: 'Git'),
                SkillsChip(text: 'Critical thinking'),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Why hire me?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5.0),
            const DecoratedBox(
              decoration: BoxDecoration(),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
