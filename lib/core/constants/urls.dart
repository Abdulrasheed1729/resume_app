import 'package:resume_app/core/helpers/helpers.dart';

/// The url to the [twitter](https://twitter.com) page
final Uri twitterUrl = Uri.parse('https://twitter.com/bolaji1729');

/// The url to the [linkedin](https://linkedin.com) page
final Uri linkedinUrl = Uri.parse('https://linkedin.com/bolaji1729');

/// The url to the [github](https://github.com) page
final Uri githubUrl = Uri.parse('https://github.com/Abdulrasheed1729');

/// The url to the twitter page
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'fawomath@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': '',
  }),
);
