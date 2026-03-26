import 'package:flutter/material.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import '../projects/components/title_text.dart';
import 'components/education_grid.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: '', title: 'Education'),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Responsive(
              desktop: const EducationGrid(crossAxisCount: 3, ratio: 1.5),
              extraLargeScreen: const EducationGrid(crossAxisCount: 4, ratio: 1.6),
              largeMobile: const EducationGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: const EducationGrid(crossAxisCount: 1, ratio: 1.2),
              tablet: const EducationGrid(crossAxisCount: 2, ratio: 1.7),
            ),
          )
        ],
      ),
    );
  }
}
