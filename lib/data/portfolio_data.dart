class PortfolioData {
  static const String name = "RINSHAD K";
  static const String title = "Mobile Application Developer";
  static const String phone = "8137060921";
  static const String email = "rinshadk0426@gmail.com";
  static const String linkedIn =
      "https://www.linkedin.com/in/rinshad-k-61681b3a5";
  static const String github = "https://github.com/rinshadk2003";

  static const String summary =
      "Mobile Application Developer with 6+ months of hands-on experience building scalable Android and cross-platform applications using Kotlin (Jetpack Compose) and Flutter. Strong foundation in MVVM, Clean Architecture, SOLID principles, and Repository pattern. Experienced in Kotlin Coroutines, Flow, REST API integration, Firebase services, and performance optimization. Published production-ready applications on Google Play Store with focus on maintainable architecture and responsive UI.";

  static const List<Map<String, dynamic>> skills = [
    {
      "category": "Mobile Development",
      "items": ["Kotlin", "Jetpack Compose", "Android SDK", "Flutter", "Dart"],
    },
    {
      "category": "Architecture & Design",
      "items": [
        "MVVM",
        "Clean Architecture",
        "SOLID Principles",
        "Repository Pattern",
        "Separation of Concerns",
      ],
    },
    {
      "category": "Android Components",
      "items": [
        "ViewModel",
        "LiveData",
        "Navigation Component",
        "Room Database",
        "Hilt (Dependency Injection)",
        "Coroutines",
        "Flow",
      ],
    },
    {
      "category": "State Management",
      "items": ["Provider", "Riverpod", "BLoC"],
    },
    {
      "category": "Backend & Cloud",
      "items": [
        "Firebase Authentication",
        "Cloud Firestore",
        "Firebase Storage",
        "Firestore Security Rules",
      ],
    },
    {
      "category": "Networking",
      "items": [
        "RESTful APIs",
        "Retrofit",
        "HTTP",
        "JSON Parsing",
        "Async/Await",
      ],
    },
    {
      "category": "Tools & Languages",
      "items": ["Android Studio", "VS Code", "Git", "GitHub", "Figma", "Java"],
    },
  ];

  static const List<Map<String, String>> experience = [
    {
      "title": "Junior Mobile Application Developer Intern",
      "company": "Spinecode Solution, Malappuram",
      "duration": "July 2025 – December 2025",
      "description":
          "• Developed and deployed production-ready Flutter applications in an Agile team.\n"
          "• Converted 30+ Figma designs into reusable, responsive UI components.\n"
          "• Implemented Firebase Cloud Firestore CRUD operations with real-time data sync.\n"
          "• Integrated RESTful APIs using async/await and optimized JSON parsing.\n"
          "• Reduced unnecessary widget rebuilds by 40% using optimized state management.\n"
          "• Identified and resolved 15+ UI/UX and functional issues.\n"
          "• Collaborated with backend and design teams to deliver features.",
    },
  ];

  static const List<Map<String, String>> projects = [
    {
      "title": "NEOSNAX – Food Ordering Application",
      "tech": "Flutter | Firebase | Provider",
      "description":
          "• Designed and developed a full-featured food ordering application with real-time order tracking and user management.\n"
          "• Implemented Firestore real-time listeners for live order status updates.\n"
          "• Applied Clean Architecture separating presentation, domain, and data layers.\n"
          "• Integrated secure authentication and optimized database queries.\n"
          "• Built scalable UI components ensuring smooth performance across devices.",
      "link":
          "https://play.google.com/store/apps/details?id=com.spine.neosnaxapp.user",
    },
    {
      "title": "KHIDMAT – Charity Fund Collection Application",
      "tech": "Flutter | Firebase | Provider",
      "description":
          "• Developed secure donation platform using Firebase Authentication.\n"
          "• Managed structured donation records using Cloud Firestore.\n"
          "• Implemented role-based access control using Firestore security rules.\n"
          "• Ensured scalable state management using Provider architecture.\n"
          "• Focused on performance optimization and responsive UI design.",
      "link":
          "https://play.google.com/store/apps/details?id=com.spine.khidmat_user",
    },
  ];

  static const List<Map<String, String>> education = [
    {
      "degree": "Bachelor of Computer Applications (BCA)",
      "institution": "University of Calicut, Kerala",
      "year": "2021 – 2024",
    },
  ];
}
