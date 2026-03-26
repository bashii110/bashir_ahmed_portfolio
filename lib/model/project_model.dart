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
    name: 'FoodHub',
    description:
    'FoodHub is a full-stack mobile application built with Flutter (front-end) and Laravel (back-end) that allows users to easily browse, order, and pay for food online and cash on delivery.',
    image: 'assets/images/foodhub_img.jpeg',
    link: 'https://github.com/bashii110/food_hub',
    technologies: ['Flutter', 'Dart', 'Laravel', 'MySQL'],
  ),
  Project(
    name: 'Google Clone ',
    description:
        'Built A responsive Google Search UI clone built with Flutter, featuring dynamic data fetching through REST APIs, clean Material Design layout, and seamless cross-platform support for Android and iOS.',
    image: 'assets/images/google_clone.jpg',
    link: 'https://bashii110.github.io/google_clone/',
    technologies: ['Flutter', 'Rest APIs', 'Dart'],
  ),
  Project(
    name: 'CoreTech',
    description:
    'CoreTech is a dynamic web application that collects and displays tech-related data using web scraping. The app automatically fetches the latest content and presents it in a structured, user-friendly interface.',
    image: 'assets/images/coretech_img.png',
    link: 'https://github.com/bashii110/coretech_app',
    technologies: ['Flutter', 'Dart', 'Web Scraping', 'Node.js'],
  ),
  Project(
    name: 'ResumeCraft',
    description:
    'ResumeCraft is an offline Flutter application that allows users to create professional resumes in ATS-friendly format. Users can fill in their details, customize sections, and generate resumes without an internet connection.',
    image: 'assets/images/resumecraft_img.jpeg',
    link: 'https://github.com/bashii110/resumecraft',
    technologies: ['Flutter', 'Dart'],
  ),
  Project(
    name: 'Weather App',
    description:
        'Created a sleek and responsive weather app built with Flutter that fetches real-time weather data using REST APIs. It displays current weather, forecasts, and city-based search with an intuitive and user-friendly UI.',
    image: 'assets/images/weather_app.jpg',
    link: 'https://bashii110.github.io/weather-App/',
    technologies: ['Flutter', 'Rest APIs', 'Dart'],
  ),

];
