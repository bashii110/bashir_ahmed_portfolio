class Education {
  final String degree;
  final String institution;
  final String passyear;
  final String description;
  final String link;

  Education({
    required this.degree,
    required this.institution,
    required this.passyear,
    required this.description,
    required this.link,
  });
}

List<Education> educationList = [
  Education(
      degree: 'BE in Software Engineering',
      institution: 'Quaid e Awam University \nNawabshah',
      passyear: '🎓 2026',
      description: 'Specializing in Software Development',
      link: 'https://quest.edu.pk/'),
  Education(
      degree: 'FSc',
      institution: 'Dr AQ Khan College Islamabad\nIslamabad',
      passyear: '🎓 2022',
      description: 'Major in Mathematics, Physics & Chemistry',
      link: 'https://aqkicampus.com/'),
];
