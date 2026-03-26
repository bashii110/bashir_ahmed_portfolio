import 'package:flutter/material.dart';


import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Container(
          constraints: BoxConstraints(
            maxWidth: Responsive.isMobile(context) ? 310 : 560,
          ),
          padding: const EdgeInsets.only(left: 0, right: 10),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRichText(context, value),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRichText(BuildContext context, double fontSize) {
    final bool isMobile = Responsive.isMobile(context);
    return SelectableText.rich(
      TextSpan(
        children: [
          _buildTextSpan(
            "I develop cross-platform mobile apps with Flutter ",
            fontSize,
          ),
          _buildTextSpan(
            "",
            fontSize,
          ),
          _buildTextSpan(
            "I transform ideas into production-ready apps ",
            fontSize,
          ),
          _buildTextSpan(
            "delivering seamless experiences across ",
            fontSize,
          ),
          _buildTextSpan(
            "all platforms and devices.",
            fontSize,
            Colors.blueAccent,
          ),
        ],
      ),
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white70,
        fontSize: isMobile ? fontSize * 1 : fontSize,
        height: 1.6,
      ),
    );
  }

  TextSpan _buildTextSpan(String text, double fontSize, [Color? color]) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: color ?? Colors.white70,
        wordSpacing: 1.2,
        letterSpacing: 0.2,
        fontWeight: color != null ? FontWeight.w600 : FontWeight.normal,
      ),
    );
  }
}
        //   // 'I\'m capable of creating excellent mobile apps, handling${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.',
        //   'I specialize in building cross-platform mobile apps with Flutter and full-stack web applications using the MERN stack. My focus is on clean architecture, responsive design, and performance optimization. From intuitive UI/UX to scalable backend solutions, I bridge the gap between ideas and production-ready apps—delivering seamless experiences across all devices.',
        //   maxLines: 2,
        //   overflow: TextOverflow.ellipsis,
        //   style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        // ;