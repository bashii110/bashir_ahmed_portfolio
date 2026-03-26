
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://www.linkedin.com/in/bashir-ahmed110'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/bashii110')),
        ),
        SocialMediaIcon(
            icon: 'assets/icons/facebook.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://www.facebook.com/romeo.dahrii'))),

        SocialMediaIcon(
            icon: 'assets/icons/youtube.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://www.youtube.com/@funstorm029'))),

        SocialMediaIcon(
          icon: 'assets/icons/instagram.svg',
          onTap: () => launchUrl(
              Uri.parse('https://www.instagram.com/bashirs.dripp._?igsh=czZudmg1dms5NXdz')),
        ),

        // const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
      ],
    );
  }
}
