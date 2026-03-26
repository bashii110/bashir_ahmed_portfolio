class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final List<String> technologies;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.link,
    required this.technologies,
  });
}

List<Project> projectList = [
  Project(
    name: 'Google Clone ',
    description:
        'Built A responsive Google Search UI clone built with Flutter, featuring dynamic data fetching through REST APIs, clean Material Design layout, and seamless cross-platform support for Android and iOS.',
    image: 'assets/images/google_clone.jpg',
    link: 'https://bashii110.github.io/google_clone/',
    technologies: ['Flutter', 'Rest APIs', 'Dart'],
  ),
  Project(
    name: 'Weather App',
    description:
        'Created a sleek and responsive weather app built with Flutter that fetches real-time weather data using REST APIs. It displays current weather, forecasts, and city-based search with an intuitive and user-friendly UI.',
    image: 'assets/images/weather_app.jpg',
    link: 'https://bashii110.github.io/weather-App/',
    technologies: ['Flutter', 'Rest APIs', 'Dart'],
  ),
  Project(
    name: 'BMI Calculator',
    description:
        'A simple and interactive BMI Calculator app developed using Flutter. Users can input their height and weight to instantly calculate their Body Mass Index with health status feedback and clean UI.',
    image: 'assets/images/bmi_cal.jpg',
    link: 'https://github.com/bashii110/bmi_calculator',
    technologies: ['Flutter', 'Dart'],
  ),
];
