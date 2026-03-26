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
    name: 'Flutter and Dart- Complete App Development Course',
    organization: 'PACKT',
    date: 'JUL 30, 2025',
    skills: 'Flutter · Dart · Mobile App Development · UI/UX',
    credential: 'https://drive.google.com/drive/u/0/folders/1OdVkp7sDm8PuwfyG9u2EECMKL9ASP189',
  ),
  CertificateModel(
    name: 'Data Science Professional',
    organization: 'Oracle',
    date: 'Aug 25, 2025',
    skills: 'Cloud Computing · Data Science · Machine Learning · Oracle Cloud',
    credential: 'https://drive.google.com/drive/u/0/folders/1-ZevOqF7KWbUgXpcm4TaNQ4EzqQvy00w',
  ),
  CertificateModel(
    name: 'Algorithmic ToolBx',
    organization: 'UC SanDiego',
    date: 'Jul 13, 2025',
    skills: 'Algorithms · Problem Solving · Computational Thinking · Programming',
    credential: 'https://drive.google.com/drive/u/0/folders/1CGGms341cFHDibr1qIjJeO0ep7qRHWBe',
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
