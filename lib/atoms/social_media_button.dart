import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final String icon;
  final String link;

  const SocialMediaButton({super.key, required this.icon, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Image.asset(
        icon,
        width: 24,
        height: 24,
      ),
      onTap: () {
        final Uri url = Uri.parse(link);
        launchUrl(url);
      },
    );
  }
}
