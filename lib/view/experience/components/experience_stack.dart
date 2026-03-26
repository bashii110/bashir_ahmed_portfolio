import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../model/experience_model.dart';
import '../../../../res/constants.dart';
import '../../../../view model/getx_controllers/experience_controller.dart';

class ExperienceStack extends StatelessWidget {
  final int index;
  final controller = Get.put(ExperienceController());

  ExperienceStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final experience = experienceList[index];
    return InkWell(
      onHover: (value) => controller.onHover(index, value),
      onTap: () {},
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
            // Title
            Text(
              experience.title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: defaultPadding / 2),

            // Company & Duration row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    experience.company,
                    style: const TextStyle(color: Colors.amber, fontSize: 12),
                  ),
                ),
                Text(
                  experience.duration,
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),

            const Divider(color: Colors.white24, height: 1),
            const SizedBox(height: defaultPadding / 2),

            // Responsibilities
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: experience.responsibilities.length,
                itemBuilder: (context, i) => Padding(
                  padding:
                  const EdgeInsets.only(bottom: defaultPadding / 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Icon(
                          Icons.arrow_right,
                          color: Colors.pinkAccent,
                          size: 14,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          experience.responsibilities[i],
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 11, height: 1.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}