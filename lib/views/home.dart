import 'package:flutter/material.dart';
import 'package:resume_app/core/core.dart';
import 'package:resume_app/widgets/widgets.dart';

import 'about_me_page.dart';

class HomePage extends StatelessWidget with UrlLaunchMixin {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[500],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 70,
                    foregroundImage: AssetImage('assets/images/portrait.jpg'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'Abdulrasheed Fawole',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(
                color: Colors.grey,
                endIndent: 60,
                indent: 60,
              ),
              const SizedBox(height: 5),
              const Text(
                'Mobile Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              AppButton(
                text: 'About me',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AboutMePage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              const Text(
                'Contact me',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactCard(
                    logoUrl: 'assets/svgs/gmail-logo.svg',
                    onTap: sendMail,
                  ),
                  ContactCard(
                    logoUrl: 'assets/svgs/twitter-logo.svg',
                    onTap: gotoTwitter,
                  ),
                  ContactCard(
                    logoUrl: 'assets/svgs/linkedin-logo.svg',
                    onTap: gotoLinkedin,
                  ),
                  ContactCard(
                    logoUrl: 'assets/svgs/github-logo.svg',
                    onTap: gotoGithub,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
