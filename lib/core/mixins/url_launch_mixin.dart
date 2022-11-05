import 'package:resume_app/core/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

/// The `mixin` that handles the launching of
/// external links in the app
mixin UrlLaunchMixin {
  ///  Opens [Twitter](https://twitter.com)
  Future<void> gotoTwitter() async {
    try {
      await launchUrl(twitterUrl);
    } catch (_) {}
  }

  /// Opens [LinkedIn](https://linkedin.com)
  Future<void> gotoLinkedin() async {
    try {
      await launchUrl(linkedinUrl);
    } catch (_) {}
  }

  /// Opens [Gituhb](https://github.com)
  Future<void> gotoGithub() async {
    try {
      await launchUrl(githubUrl);
    } catch (_) {}
  }

  /// Opens [Gituhb](https://github.com)
  Future<void> sendMail() async {
    try {
      await launchUrl(emailLaunchUri);
    } catch (_) {}
  }
}
