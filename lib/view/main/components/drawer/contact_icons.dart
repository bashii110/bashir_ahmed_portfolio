import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://linkedin.com/in/bashir-ahmed110'));
              },
              icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/bashii110'));
              },
              icon: SvgPicture.asset('assets/icons/github.svg')),
          // IconButton(
          //     onPressed: () {
          //       launchUrl(Uri.parse('https://www.facebook.com/CREALIFY'));
          //     },
          //     icon: SvgPicture.asset('assets/icons/facebook.png')),
          // IconButton(
          //     onPressed: () {
          //       launchUrl(
          //           Uri.parse('https://www.instagram.com/crealify_official'));
          //     },
          //     icon: const FaIcon(FontAwesomeIcons.instagram,
          //         color: Colors.white)),
          // IconButton(
          //     onPressed: () {
          //       launchUrl(Uri.parse('https://www.youtube.com/@CREALIFY'));
          //     },
          //     icon: SvgPicture.asset('assets/icons/youtube.svg')),
          const Spacer(),
        ],
      ),
    );
  }
}
