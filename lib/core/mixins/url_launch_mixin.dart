import 'package:resume_app/core/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

/// The `mixin` that handles the launching of urls using
/// the `url_laucher` library
mixin UrlLaunchMixin {
  ///  launches the given  [Twitter](https://twitter.com) url
  Future<void> gotoTwitter() async {
    try {
      await launchUrl(twitterUrl);
    } catch (_) {}
  }

  /// launches the given [LinkedIn](https://linkedin.com) url
  Future<void> gotoLinkedin() async {
    try {
      await launchUrl(linkedinUrl);
    } catch (_) {}
  }

  /// launches the given [Gituhb](https://github.com) url
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
