
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/view/experience/experience_page.dart';

import '../certifications/certifications.dart';
import '../education/education.dart';
import '../intro/introduction.dart';
import '../main/main_view.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
      ExperiencePage(),
      EducationPage(),
      Certifications(),
    ]);
  }
}
