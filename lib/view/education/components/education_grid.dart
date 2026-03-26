import 'package:flutter/material.dart';
import '../../../../model/education_model.dart';
import '../../../../res/constants.dart';
import 'education_stack.dart';

class EducationGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  const EducationGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      itemCount: educationList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(colors: [
              Colors.pinkAccent,
              Colors.blue,
            ]),
            boxShadow: const [
              BoxShadow(color: Colors.pink, offset: Offset(-2, 0), blurRadius: 10),
              BoxShadow(color: Colors.blue, offset: Offset(2, 0), blurRadius: 10),
            ],
          ),
          child: EducationStack(index: index),
        );
      },
    );
  }
}
