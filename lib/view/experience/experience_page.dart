import 'package:flutter/material.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import '../projects/components/title_text.dart';
import 'components/experience_grid.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'Work', title: 'Experience'),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Responsive(
              desktop: ExperienceGrid(crossAxisCount: 3, ratio: 1.0),
              extraLargeScreen: ExperienceGrid(crossAxisCount: 4, ratio: 1.1),
              largeMobile: ExperienceGrid(crossAxisCount: 1, ratio: 1.2),
              mobile: ExperienceGrid(crossAxisCount: 1, ratio: 0.77),
              tablet: ExperienceGrid(crossAxisCount: 2, ratio: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}