import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../model/education_model.dart';
import '../../../../res/constants.dart';

class EducationStack extends StatelessWidget {
  final int index;
  const EducationStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final education = educationList[index];
    return InkWell(
      onTap: () => launchUrl(Uri.parse(education.link)),
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(defaultPadding),
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              education.degree,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              education.institution,
              style: const TextStyle(color: Colors.amber),
            ),
            const SizedBox(height: defaultPadding / 3),
            Text(
              education.passyear,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              education.description,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
                boxShadow: const [
                  BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
                  BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Visit Website', style: TextStyle(color: Colors.white, fontSize: 10)),
                  SizedBox(width: 5),
                  Icon(Icons.link, color: Colors.white, size: 12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
