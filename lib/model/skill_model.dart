class Skill {
  final String name;
  final String category;
  final int proficiency; // 1-5 scale

  Skill({
    required this.name,
    required this.category,
    required this.proficiency,
  });
}

List<Skill> skillsList = [
  Skill(name: 'Flutter', category: 'Mobile Development', proficiency: 3),
  Skill(name: 'Dart', category: 'Programming', proficiency: 5),
  Skill(name: 'Firebase', category: 'Backend', proficiency: 4),
  Skill(name: 'REST API', category: 'Web Services', proficiency: 4),
  Skill(name: 'MERN Stack', category: 'Web Development', proficiency: 4),
  Skill(name: 'JavaScript', category: 'Programming', proficiency: 4),
  Skill(name: 'TypeScript', category: 'Programming', proficiency: 3),
  Skill(name: 'Python', category: 'Programming', proficiency: 3),
  Skill(name: 'Arduino', category: 'IoT', proficiency: 4),
  Skill(name: 'UI/UX Design', category: 'Design', proficiency: 4),
  Skill(name: 'Figma', category: 'Design', proficiency: 4),
  Skill(name: 'Git', category: 'Version Control', proficiency: 4),
  Skill(name: 'Docker', category: 'DevOps', proficiency: 3),
  Skill(name: 'AWS', category: 'Cloud', proficiency: 3),
  Skill(name: 'Networking', category: 'IT', proficiency: 4),
  Skill(name: 'Cybersecurity', category: 'Security', proficiency: 3),
];