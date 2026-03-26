import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    final isDesktop = Responsive.isDesktop(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ── left content ── constrain width on mobile so it never overflows
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isDesktop)
                  SizedBox(height: size.height * 0.06),

                if (!isDesktop)
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.23),
                      const AnimatedImageContainer(
                        width: 150,
                        height: 200,
                      ),
                    ],
                  ),

                if (!isDesktop)
                  SizedBox(height: size.height * 0.1),

                const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 35, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40),
                ),

                if (kIsWeb && Responsive.isLargeMobile(context))
                  Container(
                    height: defaultPadding,
                    color: Colors.transparent,
                  ),

                const CombineSubtitleText(),
                const SizedBox(height: defaultPadding / 2),

                const Responsive(
                  desktop: AnimatedDescriptionText(start: 14, end: 15),
                  largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                  mobile: AnimatedDescriptionText(start: 14, end: 12),
                  tablet: AnimatedDescriptionText(start: 17, end: 14),
                ),

                const SizedBox(height: defaultPadding * 2),
                const DownloadButton(),
              ],
            ),
          ),
        ),

        // ── right image — only on desktop ──
        if (isDesktop) ...[
          const SizedBox(width: defaultPadding),
          const AnimatedImageContainer(),
          const SizedBox(width: defaultPadding),
        ],
      ],
    );
  }
}