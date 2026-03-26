class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter and Dart',
    organization: 'IBM',
    date: 'JUL 2025',
    skills: 'Developing · IOS, Android and Mobile Apps',
    credential: 'https://drive.google.com/file/d/1fzPvjRsEqQ8UW6CVNilWa_7dXOPY-CEi/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'Prompt Engineering Basics',
    organization: 'IBM',
    date: 'JUl 2025',
    skills: 'AI · Prompt Engineering',
    credential: 'https://drive.google.com/file/d/1p1KZnuQ0XjQMbULOqCl_bkUMqRmQUKqV/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'System Administration and IT Infrastructure Services',
    organization: 'Google',
    date: 'JUL 2025',
    skills: 'System Administration · IT Infrastructure Services',
    credential: 'https://drive.google.com/file/d/1CLocDx7d2b9eGNuCbX5Gj-ky2hjddYGf/view?usp=drive_link',
  ),
  // CertificateModel(
  //   name: 'Front-End Development with React',
  //   organization: 'Online Course',
  //   date: 'SEP 2023',
  //   skills: 'React · JavaScript · Web Development',
  //   credential: 'https://react-certificates.com',
  // ),
  // CertificateModel(
  //   name: 'Cybersecurity Bootcamp',
  //   organization: 'Training Program',
  //   date: 'JUN 2022',
  //   skills: 'Security · Ethical Hacking',
  //   credential: 'https://cybersecurity-training.org',
  // ),
  // CertificateModel(
  //   name: '3D Printer Project Exhibition',
  //   organization: 'Lec Expo',
  //   date: 'NOV 2020',
  //   skills: '3D Printing · CAD Design',
  //   credential: 'https://lecexpo.com/projects',
  // ),
];
