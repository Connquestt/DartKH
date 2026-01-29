import 'package:url_launcher/url_launcher.dart';

class UrlLaunch {
  final String link;
  UrlLaunch({required this.link});

  Uri get uri => Uri.parse(link);

  Future<void> launch() async {
    final Uri _uri = uri;
    if (!await launchUrl(_uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $link';
    }
  }
}
