import 'package:flutter/material.dart';
import 'package:resume_app/colors.dart';

/// The App View that serves as the parent widget for other
/// screens and views in the app.
class ResumeView extends StatefulWidget {
  /// Constructor
  const ResumeView({super.key});

  @override
  State<ResumeView> createState() => _ResumeViewState();
}

class _ResumeViewState extends State<ResumeView> {
  final List<Widget> _pages = <Widget>[
    const AboutMePage(),
    const SkillsPage(),
    const Text('Expetience'),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (newIndex) {
            setState(() {
              _selectedIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Overview',
            ),
            NavigationDestination(
              icon: Icon(Icons.info_outline),
              selectedIcon: Icon(Icons.info),
              label: 'Skills',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
              label: 'Experience',
            ),
          ],
        ),
        // body: _pages[_selectedIndex],
      ),
    );
  }
}

///
class SkillsPage extends StatelessWidget {
  ///
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: 400,
                  // decoration: const BoxDecoration(
                  //   color: grey,
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(15),
                  //   ),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 40),
                      Align(
                        child: Text(
                          'Abdulrasheed Fawole',
                          style: TextStyle(
                            color: lightGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Skills',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Flutter and Dart',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: .60,
                        color: Colors.lightBlueAccent,
                        minHeight: 5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Go',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: .40,
                        color: Colors.teal,
                        minHeight: 5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Git',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: .55,
                        color: Colors.redAccent,
                        minHeight: 5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Linux',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: .75,
                        color: Colors.cyan,
                        minHeight: 5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Problem Solving',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: .75,
                        color: Colors.orange,
                        minHeight: 5,
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 90,
                top: -60,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/portrait.jpg'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Interests',
              style: TextStyle(
                color: lightGrey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: Wrap(
              spacing: 10,
              children: const [
                Chip(
                  label: Text(
                    'Mathematics',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    'Linux',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    'Games',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    'Sleeping',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    'Hardwares',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

///
class AboutMePage extends StatelessWidget {
  ///
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        Align(
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/portrait.jpg'),
          ),
        ),
        SizedBox(height: 15),
        Text(''),
      ],
    );
  }
}
