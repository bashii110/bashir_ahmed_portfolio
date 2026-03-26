class Experience {
  final String title;
  final String company;
  final String duration;
  final String image;
  final List<String> responsibilities;

  Experience({
    required this.title,
    required this.company,
    required this.duration,
    required this.image,
    required this.responsibilities,
  });
}

List<Experience> experienceList = [
  Experience(
    title: 'Mobile App Development Intern',
    company: 'CoreTech Innovations\nIn collaboration with ORIC Quest, Nawabshah, Pakistan',
    duration: 'Aug 2025\nSep 2025',
    image: 'assets/images/coretech_internship.jpg',
    responsibilities: [
      'Participated in real-time mobile app development projects',
      'Applied technical and creative skills to deliver quality outcomes',
      'Collaborated with team members to achieve project milestones',
      'Demonstrated professionalism and commitment to organizational goals',
      'Handled assigned responsibilities efficiently under guidance',
      'Gained hands-on experience in Flutter app development',
    ],
  ),
  // Experience(
  //   title: 'Chip-Level Hardware & Networking Specialist',
  //   company: 'Siddhababa Computer\nTraffic Chowk, Rupandehi',
  //   // duration: '🗓️ Jul 2019 - Dec 2021',
  //   duration: '2019 - 2021',
  //   image: 'assets/images/siddhababa.png',
  //   responsibilities: [
  //     'Conducted chip-level diagnostics and repair for various computing devices',
  //     'Installed and maintained networking infrastructure for small offices and clients',
  //     // 'Provided technical support and troubleshooting for hardware/software issues',
  //   ],
  // ),
  // Experience(
  //   title: 'Graphics Designer & Hardware Technician',
  //   company: 'Himalayan Computer\nGalyang, Syangja',
  //   duration: '2018 - 2019',
  //   responsibilities: [
  //     'Designed marketing and educational graphics (brochures, banners, etc.)',
  //     'Handled PC/laptop troubleshooting and hardware/software servicing',
  //     // 'Conducted basic computer training sessions for students',
  //   ],
  //   image: 'assets/images/himalayan.png',
  // ),
];
