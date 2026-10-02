import 'package:flutter/material.dart';

void main() {
  runApp(StudentPlacementApp());
}

// =====================================================
// MODELS
// ======================================================

class Student {
  String name;
  String email;
  String phone;
  String college;
  String department;
  String course;
  String year;
  String studentId;
  String password;
  String resumeName;

  Student({
    required this.name,
    required this.email,
    required this.phone,
    required this.college,
    required this.department,
    required this.course,
    required this.year,
    required this.studentId,
    required this.password,
    this.resumeName = "Student_Resume.pdf",
  });
}

class Internship {
  String id;
  String company;
  String title;
  String description;
  String responsibilities;
  String skills;
  String eligibility;
  String duration;
  String stipend;
  String location;
  String workMode;
  String deadline;

  Internship({
    required this.id,
    required this.company,
    required this.title,
    required this.description,
    required this.responsibilities,
    required this.skills,
    required this.eligibility,
    required this.duration,
    required this.stipend,
    required this.location,
    required this.workMode,
    required this.deadline,
  });
}

class Placement {
  String id;
  String company;
  String title;
  String description;
  String responsibilities;
  String skills;
  String eligibility;
  String salary;
  String location;
  String jobType;
  String selectionProcess;
  String deadline;

  Placement({
    required this.id,
    required this.company,
    required this.title,
    required this.description,
    required this.responsibilities,
    required this.skills,
    required this.eligibility,
    required this.salary,
    required this.location,
    required this.jobType,
    required this.selectionProcess,
    required this.deadline,
  });
}

class Application {
  String id;
  String studentEmail;
  String studentName;
  String opportunityId;
  String company;
  String title;
  String type;
  String date;
  String status;

  Application({
    required this.id,
    required this.studentEmail,
    required this.studentName,
    required this.opportunityId,
    required this.company,
    required this.title,
    required this.type,
    required this.date,
    required this.status,
  });
}

class NotificationItem {
  String title;
  String message;
  String time;
  IconData icon;

  NotificationItem({
    required this.title,
    required this.message,
    required this.time,
    required this.icon,
  });
}

// ============================================================
// GLOBAL DATA
// =====================================================  =======

List<Student> students = [
  Student(
    name: "Demo Student",
    email: "student@gmail.com",
    password: "123456",
    phone: "9876543210",
    college: "ABC College of Engineering",
    department: "Computer Science",
    course: "B.Tech",
    year: "3rd Year",
    studentId: "STU001",
  ),
];

List<Internship> internships = [
  Internship(
    id: "I001",
    company: "Tech Solutions Pvt Ltd",
    title: "Flutter Developer Intern",
    description:
    "Work with a development team to create modern mobile applications using Flutter and Dart.",
    responsibilities:
    "Develop Flutter screens, fix bugs, participate in code reviews and work with the development team.",
    skills: "Flutter, Dart, Firebase, UI Design",
    eligibility: "B.Tech / BCA / MCA Computer Science students",
    duration: "3 Months",
    stipend: "₹15,000/month",
    location: "Mumbai",
    workMode: "Hybrid",
    deadline: "30 Dec 2026",
  ),
  Internship(
    id: "I002",
    company: "CodeWave Technologies",
    title: "Web Development Intern",
    description:
    "Learn and work on modern responsive web applications.",
    responsibilities:
    "Build web pages, test applications and assist senior developers.",
    skills: "HTML, CSS, JavaScript, React",
    eligibility: "Computer Science students",
    duration: "6 Months",
    stipend: "₹12,000/month",
    location: "Pune",
    workMode: "On-site",
    deadline: "15 Jan 2027",
  ),
  Internship(
    id: "I003",
    company: "DataVision",
    title: "Data Science Intern",
    description:
    "Work on data analysis and machine learning projects.",
    responsibilities:
    "Clean datasets, create reports and assist with machine learning models.",
    skills: "Python, Pandas, Machine Learning",
    eligibility: "Engineering and Science students",
    duration: "4 Months",
    stipend: "₹18,000/month",
    location: "Bangalore",
    workMode: "Remote",
    deadline: "20 Dec 2026",
  ),
  Internship(
    id: "I004",
    company: "Creative Pixel",
    title: "UI/UX Design Intern",
    description:
    "Design attractive and user-friendly mobile and web interfaces.",
    responsibilities:
    "Create wireframes, prototypes and UI designs.",
    skills: "Figma, UI Design, UX Research",
    eligibility: "Any design or technology student",
    duration: "3 Months",
    stipend: "₹10,000/month",
    location: "Delhi",
    workMode: "Remote",
    deadline: "10 Jan 2027",
  ),
  Internship(
    id: "I005",
    company: "JavaWorks",
    title: "Java Developer Intern",
    description:
    "Develop backend applications using Java and SQL.",
    responsibilities:
    "Write Java code, develop APIs and work with databases.",
    skills: "Java, SQL, Spring Boot",
    eligibility: "B.Tech / MCA students",
    duration: "5 Months",
    stipend: "₹16,000/month",
    location: "Mumbai",
    workMode: "On-site",
    deadline: "25 Dec 2026",
  ),
];

List<Placement> placements = [
  Placement(
    id: "P001",
    company: "Infosys",
    title: "Software Developer",
    description:
    "Join a software development team and work on enterprise applications.",
    responsibilities:
    "Develop software, test applications and collaborate with team members.",
    skills: "Java, SQL, Problem Solving",
    eligibility: "B.Tech Computer Science",
    salary: "6 LPA",
    location: "Pune",
    jobType: "Full Time",
    selectionProcess: "Online Test → Technical Interview → HR Interview",
    deadline: "30 Nov 2026",
  ),
  Placement(
    id: "P002",
    company: "Tech Mahindra",
    title: "Java Developer",
    description:
    "Work on enterprise Java applications and backend systems.",
    responsibilities:
    "Develop backend modules and maintain software systems.",
    skills: "Java, Spring Boot, SQL",
    eligibility: "B.Tech / MCA",
    salary: "5.5 LPA",
    location: "Mumbai",
    jobType: "Full Time",
    selectionProcess: "Aptitude Test → Technical → HR",
    deadline: "10 Dec 2026",
  ),
  Placement(
    id: "P003",
    company: "Wipro",
    title: "Python Developer",
    description:
    "Develop Python-based software solutions.",
    responsibilities:
    "Develop applications, write tests and maintain code.",
    skills: "Python, SQL, Django",
    eligibility: "B.Tech Computer Science",
    salary: "6.2 LPA",
    location: "Bangalore",
    jobType: "Full Time",
    selectionProcess: "Online Test → Interview",
    deadline: "15 Dec 2026",
  ),
  Placement(
    id: "P004",
    company: "TCS",
    title: "Graduate Software Engineer",
    description:
    "Start your software development career with TCS.",
    responsibilities:
    "Develop applications and work with software development teams.",
    skills: "Java, Python, SQL",
    eligibility: "B.Tech / BCA / MCA",
    salary: "7 LPA",
    location: "Delhi",
    jobType: "Full Time",
    selectionProcess: "Test → Technical → HR",
    deadline: "20 Dec 2026",
  ),
  Placement(
    id: "P005",
    company: "Accenture",
    title: "Associate Software Engineer",
    description:
    "Work on modern software and cloud-based solutions.",
    responsibilities:
    "Develop, test and maintain software applications.",
    skills: "Java, Python, Cloud, SQL",
    eligibility: "Engineering graduates",
    salary: "6.5 LPA",
    location: "Mumbai",
    jobType: "Full Time",
    selectionProcess: "Assessment → Technical → HR",
    deadline: "25 Dec 2026",
  ),
];

List<Application> applications = [];

List<NotificationItem> notifications = [
  NotificationItem(
    title: "New Internship",
    message: "New Flutter internship is available.",
    time: "Today",
    icon: Icons.work_outline,
  ),
  NotificationItem(
    title: "New Placement",
    message: "New placement opportunity has been added.",
    time: "Yesterday",
    icon: Icons.business_center_outlined,
  ),
  NotificationItem(
    title: "Career Alert",
    message: "Keep your profile updated for placements.",
    time: "2 days ago",
    icon: Icons.notifications_active_outlined,
  ),
];

Student? currentStudent;

// ============================================================
// THEME
// ============================================================

class StudentPlacementApp extends StatelessWidget {
  StudentPlacementApp({super.key});

  final MaterialColor primaryColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Internship & Placement",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF6F7FB),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Colors.indigo,
              width: 1.5,
            ),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

// ============================================================
// SPLASH SCREEN
// ============================================================

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3949AB),
              Color(0xFF5C6BC0),
              Color(0xFF7986CB),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.school,
                  size: 65,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Student Internship",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "& Placement",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Management System",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// LOGIN
// ============================================================

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      showMessage(context, "Please enter email and password.");
      return;
    }

    Student? student;

    for (Student s in students) {
      if (s.email.toLowerCase() == email.toLowerCase() &&
          s.password == password) {
        student = s;
        break;
      }
    }

    if (student != null) {
      currentStudent = student;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => StudentHomeScreen(),
        ),
      );
    } else {
      showMessage(context, "Invalid email or password.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.school,
                  size: 65,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Student Internship & Placement",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                    icon: Icon(
                      obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: login,
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => RegisterScreen(),
                    ),
                  );
                },
                child: const Text("Create New Student Account"),
              ),
              const Divider(height: 30),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AdminLoginScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.admin_panel_settings),
                label: const Text("Admin Login"),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  children: [
                    Text(
                      "Demo Student",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("student@gmail.com"),
                    Text("Password: 123456"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// REGISTER
// ============================================================

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final college = TextEditingController();
  final department = TextEditingController();
  final course = TextEditingController();
  final year = TextEditingController();
  final studentId = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  void register() {
    if (name.text.trim().isEmpty ||
        email.text.trim().isEmpty ||
        phone.text.trim().isEmpty ||
        college.text.trim().isEmpty ||
        department.text.trim().isEmpty ||
        course.text.trim().isEmpty ||
        year.text.trim().isEmpty ||
        studentId.text.trim().isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty) {
      showMessage(context, "Please fill all required fields.");
      return;
    }

    if (!email.text.contains("@")) {
      showMessage(context, "Please enter a valid email.");
      return;
    }

    if (password.text.length < 6) {
      showMessage(context, "Password must contain at least 6 characters.");
      return;
    }

    if (password.text != confirmPassword.text) {
      showMessage(context, "Passwords do not match.");
      return;
    }

    if (phone.text.length < 10) {
      showMessage(context, "Please enter a valid phone number.");
      return;
    }

    bool exists = students.any(
          (student) =>
      student.email.toLowerCase() == email.text.trim().toLowerCase(),
    );

    if (exists) {
      showMessage(context, "This email is already registered.");
      return;
    }

    students.add(
      Student(
        name: name.text.trim(),
        email: email.text.trim(),
        phone: phone.text.trim(),
        college: college.text.trim(),
        department: department.text.trim(),
        course: course.text.trim(),
        year: year.text.trim(),
        studentId: studentId.text.trim(),
        password: password.text,
      ),
    );

    showMessage(context, "Registration successful!");

    Navigator.pop(context);
  }

  Widget field(
      String label,
      TextEditingController controller, {
        IconData? icon,
        bool password = false,
        TextInputType? keyboard,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        controller: controller,
        obscureText: password,
        keyboardType: keyboard,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: icon == null ? null : Icon(icon),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Registration"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            field("Full Name", name, icon: Icons.person_outline),
            field(
              "Email",
              email,
              icon: Icons.email_outlined,
              keyboard: TextInputType.emailAddress,
            ),
            field(
              "Phone Number",
              phone,
              icon: Icons.phone_outlined,
              keyboard: TextInputType.phone,
            ),
            field("College Name", college, icon: Icons.school_outlined),
            field("Department", department, icon: Icons.account_tree_outlined),
            field("Course", course, icon: Icons.menu_book_outlined),
            field("Year", year, icon: Icons.calendar_today_outlined),
            field("Student ID", studentId, icon: Icons.badge_outlined),
            field(
              "Password",
              password,
              icon: Icons.lock_outline,
              password: true,
            ),
            field(
              "Confirm Password",
              confirmPassword,
              icon: Icons.lock_reset_outlined,
              password: true,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: register,
                child: const Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// ADMIN LOGIN
// ============================================================

class AdminLoginScreen extends StatefulWidget {
  AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  void login() {
    if (email.text.trim() == "admin@gmail.com" &&
        password.text == "admin123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => AdminDashboard(),
        ),
      );
    } else {
      showMessage(context, "Invalid admin credentials.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Icon(
              Icons.admin_panel_settings,
              size: 80,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),
            const Text(
              "Administrator",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Admin Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: login,
                child: const Text("ADMIN LOGIN"),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Demo: admin@gmail.com / admin123",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// STUDENT HOME
// ============================================================

class StudentHomeScreen extends StatefulWidget {
  StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  int selectedIndex = 0;

  final List<String> titles = [
    "Home",
    "Internships",
    "Placements",
    "Applications",
    "Profile",
  ];

  void logout() {
    currentStudent = null;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => LoginScreen(),
      ),
          (route) => false,
    );
  }

  Widget page() {
    if (selectedIndex == 0) {
      return HomePage(
        onNavigate: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      );
    }

    if (selectedIndex == 1) {
      return InternshipPage();
    }

    if (selectedIndex == 2) {
      return PlacementPage();
    }

    if (selectedIndex == 3) {
      return ApplicationsPage();
    }

    return ProfilePage(
      onLogout: logout,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          if (selectedIndex == 0)
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NotificationsPage(),
                  ),
                );
              },
              icon: const Icon(Icons.notifications_none),
            ),
        ],
      ),
      body: page(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            selectedIcon: Icon(Icons.work),
            label: "Internships",
          ),
          NavigationDestination(
            icon: Icon(Icons.business_center_outlined),
            selectedIcon: Icon(Icons.business_center),
            label: "Placements",
          ),
          NavigationDestination(
            icon: Icon(Icons.description_outlined),
            selectedIcon: Icon(Icons.description),
            label: "Applications",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// ============================================================
// HOME PAGE
// ============================================================

class HomePage extends StatelessWidget {
  final Function(int) onNavigate;

  HomePage({
    super.key,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    String name = currentStudent?.name ?? "Student";

    List<Application> myApps = applications
        .where((a) => a.studentEmail == currentStudent?.email)
        .toList();

    return RefreshIndicator(
      onRefresh: () async {},
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.indigo,
                    Color(0xFF7986CB),
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, $name 👋",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Find your next internship or career opportunity.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Statistics
            Row(
              children: [
                Expanded(
                  child: statCard(
                    "Internships",
                    internships.length.toString(),
                    Icons.work_outline,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: statCard(
                    "Jobs",
                    placements.length.toString(),
                    Icons.business_center_outlined,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: statCard(
                    "Applied",
                    myApps.length.toString(),
                    Icons.description_outlined,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            sectionTitle(
              "Recommended Internships",
                  () => onNavigate(1),
            ),

            const SizedBox(height: 10),

            ...internships.take(3).map(
                  (internship) => OpportunityCard(
                title: internship.title,
                company: internship.company,
                location: internship.location,
                subtitle: internship.stipend,
                icon: Icons.work_outline,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InternshipDetailsPage(
                        internship: internship,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            sectionTitle(
              "Latest Placement Opportunities",
                  () => onNavigate(2),
            ),

            const SizedBox(height: 10),

            ...placements.take(3).map(
                  (placement) => OpportunityCard(
                title: placement.title,
                company: placement.company,
                location: placement.location,
                subtitle: placement.salary,
                icon: Icons.business_center_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlacementDetailsPage(
                        placement: placement,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            sectionTitle(
              "Recent Applications",
                  () => onNavigate(3),
            ),

            const SizedBox(height: 10),

            if (myApps.isEmpty)
              emptyBox(
                "No applications yet.",
                Icons.description_outlined,
              )
            else
              ...myApps.take(3).map(
                    (application) => ApplicationCard(
                  application: application,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// INTERNSHIP PAGE
// ============================================================

class InternshipPage extends StatefulWidget {
  InternshipPage({super.key});

  @override
  State<InternshipPage> createState() => _InternshipPageState();
}

class _InternshipPageState extends State<InternshipPage> {
  String query = "";
  String locationFilter = "All";

  List<Internship> get filteredInternships {
    return internships.where((item) {
      bool searchMatch =
          item.company.toLowerCase().contains(query.toLowerCase()) ||
              item.title.toLowerCase().contains(query.toLowerCase()) ||
              item.location.toLowerCase().contains(query.toLowerCase()) ||
              item.skills.toLowerCase().contains(query.toLowerCase());

      bool locationMatch =
          locationFilter == "All" || item.location == locationFilter;

      return searchMatch && locationMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 5),
          child: TextField(
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: InputDecoration(
              hintText: "Search internships...",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: PopupMenuButton<String>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) {
                  setState(() {
                    locationFilter = value;
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: "All",
                    child: Text("All Locations"),
                  ),
                  const PopupMenuItem(
                    value: "Mumbai",
                    child: Text("Mumbai"),
                  ),
                  const PopupMenuItem(
                    value: "Pune",
                    child: Text("Pune"),
                  ),
                  const PopupMenuItem(
                    value: "Bangalore",
                    child: Text("Bangalore"),
                  ),
                  const PopupMenuItem(
                    value: "Delhi",
                    child: Text("Delhi"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "${filteredInternships.length} internships found",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ),
        Expanded(
          child: filteredInternships.isEmpty
              ? emptyBox(
            "No internships found.",
            Icons.search_off,
          )
              : ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 20),
            itemCount: filteredInternships.length,
            itemBuilder: (context, index) {
              Internship item = filteredInternships[index];

              return OpportunityCard(
                title: item.title,
                company: item.company,
                location: item.location,
                subtitle: item.stipend,
                icon: Icons.work_outline,
                extra: "${item.duration} • ${item.workMode}",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InternshipDetailsPage(
                        internship: item,
                      ),
                    ),
                  ).then((_) {
                    setState(() {});
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

// ============================================================
// PLACEMENT PAGE
// ============================================================

class PlacementPage extends StatefulWidget {
  PlacementPage({super.key});

  @override
  State<PlacementPage> createState() => _PlacementPageState();
}

class _PlacementPageState extends State<PlacementPage> {
  String query = "";
  String locationFilter = "All";

  List<Placement> get filteredPlacements {
    return placements.where((item) {
      bool searchMatch =
          item.company.toLowerCase().contains(query.toLowerCase()) ||
              item.title.toLowerCase().contains(query.toLowerCase()) ||
              item.location.toLowerCase().contains(query.toLowerCase()) ||
              item.skills.toLowerCase().contains(query.toLowerCase());

      bool locationMatch =
          locationFilter == "All" || item.location == locationFilter;

      return searchMatch && locationMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 5),
          child: TextField(
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: InputDecoration(
              hintText: "Search placements...",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: PopupMenuButton<String>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) {
                  setState(() {
                    locationFilter = value;
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: "All",
                    child: Text("All Locations"),
                  ),
                  const PopupMenuItem(
                    value: "Mumbai",
                    child: Text("Mumbai"),
                  ),
                  const PopupMenuItem(
                    value: "Pune",
                    child: Text("Pune"),
                  ),
                  const PopupMenuItem(
                    value: "Bangalore",
                    child: Text("Bangalore"),
                  ),
                  const PopupMenuItem(
                    value: "Delhi",
                    child: Text("Delhi"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "${filteredPlacements.length} placement opportunities found",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ),
        Expanded(
          child: filteredPlacements.isEmpty
              ? emptyBox(
            "No placement opportunities found.",
            Icons.search_off,
          )
              : ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 20),
            itemCount: filteredPlacements.length,
            itemBuilder: (context, index) {
              Placement item = filteredPlacements[index];

              return OpportunityCard(
                title: item.title,
                company: item.company,
                location: item.location,
                subtitle: item.salary,
                icon: Icons.business_center_outlined,
                extra: "${item.jobType} • Deadline: ${item.deadline}",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlacementDetailsPage(
                        placement: item,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

// ============================================================
// INTERNSHIP DETAILS
// ============================================================

class InternshipDetailsPage extends StatefulWidget {
  final Internship internship;

  InternshipDetailsPage({
    super.key,
    required this.internship,
  });

  @override
  State<InternshipDetailsPage> createState() =>
      _InternshipDetailsPageState();
}

class _InternshipDetailsPageState extends State<InternshipDetailsPage> {
  void apply() {
    if (currentStudent == null) return;

    bool alreadyApplied = applications.any(
          (application) =>
      application.studentEmail == currentStudent!.email &&
          application.opportunityId == widget.internship.id,
    );

    if (alreadyApplied) {
      showMessage(
        context,
        "You have already applied for this opportunity.",
      );
      return;
    }

    applications.add(
      Application(
        id: "A${applications.length + 1}",
        studentEmail: currentStudent!.email,
        studentName: currentStudent!.name,
        opportunityId: widget.internship.id,
        company: widget.internship.company,
        title: widget.internship.title,
        type: "Internship",
        date: currentDate(),
        status: "Applied",
      ),
    );

    notifications.insert(
      0,
      NotificationItem(
        title: "Application Submitted",
        message:
        "Your application for ${widget.internship.title} was submitted.",
        time: "Just now",
        icon: Icons.check_circle_outline,
      ),
    );

    showMessage(
      context,
      "Application submitted successfully!",
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Internship item = widget.internship;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Internship Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            detailHeader(
              item.company,
              item.title,
              Icons.work,
            ),
            const SizedBox(height: 20),
            infoGrid([
              ["Location", item.location],
              ["Duration", item.duration],
              ["Stipend", item.stipend],
              ["Work Mode", item.workMode],
              ["Deadline", item.deadline],
            ]),
            detailSection(
              "Description",
              item.description,
            ),
            detailSection(
              "Responsibilities",
              item.responsibilities,
            ),
            detailSection(
              "Required Skills",
              item.skills,
            ),
            detailSection(
              "Eligibility",
              item.eligibility,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: apply,
                icon: const Icon(Icons.send),
                label: const Text(
                  "APPLY NOW",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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

// ============================================================
// PLACEMENT DETAILS
// ============================================================

class PlacementDetailsPage extends StatefulWidget {
  final Placement placement;

  PlacementDetailsPage({
    super.key,
    required this.placement,
  });

  @override
  State<PlacementDetailsPage> createState() =>
      _PlacementDetailsPageState();
}

class _PlacementDetailsPageState extends State<PlacementDetailsPage> {
  void apply() {
    if (currentStudent == null) return;

    bool alreadyApplied = applications.any(
          (application) =>
      application.studentEmail == currentStudent!.email &&
          application.opportunityId == widget.placement.id,
    );

    if (alreadyApplied) {
      showMessage(
        context,
        "You have already applied for this opportunity.",
      );
      return;
    }

    applications.add(
      Application(
        id: "A${applications.length + 1}",
        studentEmail: currentStudent!.email,
        studentName: currentStudent!.name,
        opportunityId: widget.placement.id,
        company: widget.placement.company,
        title: widget.placement.title,
        type: "Placement",
        date: currentDate(),
        status: "Applied",
      ),
    );

    notifications.insert(
      0,
      NotificationItem(
        title: "Placement Application",
        message:
        "Your application for ${widget.placement.title} was submitted.",
        time: "Just now",
        icon: Icons.check_circle_outline,
      ),
    );

    showMessage(
      context,
      "Application submitted successfully!",
    );
  }

  @override
  Widget build(BuildContext context) {
    Placement item = widget.placement;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Placement Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            detailHeader(
              item.company,
              item.title,
              Icons.business_center,
            ),
            const SizedBox(height: 20),
            infoGrid([
              ["Location", item.location],
              ["Salary", item.salary],
              ["Job Type", item.jobType],
              ["Deadline", item.deadline],
            ]),
            detailSection(
              "Description",
              item.description,
            ),
            detailSection(
              "Responsibilities",
              item.responsibilities,
            ),
            detailSection(
              "Required Skills",
              item.skills,
            ),
            detailSection(
              "Eligibility",
              item.eligibility,
            ),
            detailSection(
              "Selection Process",
              item.selectionProcess,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: apply,
                icon: const Icon(Icons.send),
                label: const Text(
                  "APPLY NOW",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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

// ============================================================
// APPLICATIONS PAGE
// ============================================================

class ApplicationsPage extends StatefulWidget {
  ApplicationsPage({super.key});

  @override
  State<ApplicationsPage> createState() => _ApplicationsPageState();
}

class _ApplicationsPageState extends State<ApplicationsPage> {
  @override
  Widget build(BuildContext context) {
    List<Application> myApplications = applications
        .where(
          (application) =>
      application.studentEmail == currentStudent?.email,
    )
        .toList();

    return myApplications.isEmpty
        ? emptyBox(
      "You have not applied to any opportunity yet.",
      Icons.description_outlined,
    )
        : ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: myApplications.length,
      itemBuilder: (context, index) {
        return ApplicationCard(
          application: myApplications[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ApplicationDetailsPage(
                  application: myApplications[index],
                ),
              ),
            ).then((_) {
              setState(() {});
            });
          },
        );
      },
    );
  }
}

// ============================================================
// APPLICATION DETAILS
// ============================================================

class ApplicationDetailsPage extends StatelessWidget {
  final Application application;

  ApplicationDetailsPage({
    super.key,
    required this.application,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.indigo.shade50,
                    child: Icon(
                      application.type == "Internship"
                          ? Icons.work
                          : Icons.business_center,
                      size: 35,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    application.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    application.company,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  statusBadge(application.status),
                ],
              ),
            ),
            const SizedBox(height: 15),
            infoTile(
              Icons.category_outlined,
              "Type",
              application.type,
            ),
            infoTile(
              Icons.calendar_today_outlined,
              "Application Date",
              application.date,
            ),
            infoTile(
              Icons.person_outline,
              "Student",
              application.studentName,
            ),
            infoTile(
              Icons.email_outlined,
              "Email",
              application.studentEmail,
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PROFILE
// ============================================================

class ProfilePage extends StatefulWidget {
  final VoidCallback onLogout;

  ProfilePage({
    super.key,
    required this.onLogout,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void editProfile() {
    if (currentStudent == null) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EditProfilePage(
          student: currentStudent!,
        ),
      ),
    ).then((_) {
      setState(() {});
    });
  }

  void resumeInfo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResumePage(
          student: currentStudent!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Student student = currentStudent!;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.indigo.shade100,
            child: const Icon(
              Icons.person,
              size: 55,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            student.name,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            student.email,
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 25),
          profileTile(
            Icons.phone_outlined,
            "Phone",
            student.phone,
          ),
          profileTile(
            Icons.school_outlined,
            "College",
            student.college,
          ),
          profileTile(
            Icons.account_tree_outlined,
            "Department",
            student.department,
          ),
          profileTile(
            Icons.menu_book_outlined,
            "Course",
            student.course,
          ),
          profileTile(
            Icons.calendar_today_outlined,
            "Year",
            student.year,
          ),
          profileTile(
            Icons.badge_outlined,
            "Student ID",
            student.studentId,
          ),
          const SizedBox(height: 10),
          ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: const Icon(
              Icons.edit,
              color: Colors.indigo,
            ),
            title: const Text("Edit Profile"),
            trailing: const Icon(Icons.chevron_right),
            onTap: editProfile,
          ),
          const SizedBox(height: 10),
          ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: const Icon(
              Icons.description_outlined,
              color: Colors.indigo,
            ),
            title: const Text("Resume"),
            subtitle: Text(student.resumeName),
            trailing: const Icon(Icons.chevron_right),
            onTap: resumeInfo,
          ),
          const SizedBox(height: 10),
          ListTile(
            tileColor: Colors.red.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: widget.onLogout,
          ),
        ],
      ),
    );
  }
}

// ============================================================
// EDIT PROFILE
// ============================================================

class EditProfilePage extends StatefulWidget {
  final Student student;

  EditProfilePage({
    super.key,
    required this.student,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController college;
  late TextEditingController department;
  late TextEditingController course;
  late TextEditingController year;

  @override
  void initState() {
    super.initState();

    name = TextEditingController(text: widget.student.name);
    phone = TextEditingController(text: widget.student.phone);
    college = TextEditingController(text: widget.student.college);
    department = TextEditingController(text: widget.student.department);
    course = TextEditingController(text: widget.student.course);
    year = TextEditingController(text: widget.student.year);
  }

  void save() {
    if (name.text.trim().isEmpty ||
        phone.text.trim().isEmpty ||
        college.text.trim().isEmpty ||
        department.text.trim().isEmpty ||
        course.text.trim().isEmpty ||
        year.text.trim().isEmpty) {
      showMessage(context, "Please fill all fields.");
      return;
    }

    widget.student.name = name.text.trim();
    widget.student.phone = phone.text.trim();
    widget.student.college = college.text.trim();
    widget.student.department = department.text.trim();
    widget.student.course = course.text.trim();
    widget.student.year = year.text.trim();

    showMessage(context, "Profile updated successfully.");

    Navigator.pop(context);
  }

  Widget input(
      String label,
      TextEditingController controller,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            input("Name", name),
            input("Phone", phone),
            input("College", college),
            input("Department", department),
            input("Course", course),
            input("Year", year),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: save,
                child: const Text("SAVE CHANGES"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// RESUME
// ============================================================

class ResumePage extends StatefulWidget {
  final Student student;

  ResumePage({
    super.key,
    required this.student,
  });

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  void changeResumeName() {
    TextEditingController controller =
    TextEditingController(text: widget.student.resumeName);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Resume Name"),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: "Resume file name",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.trim().isNotEmpty) {
                  setState(() {
                    widget.student.resumeName =
                        controller.text.trim();
                  });
                }
                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.picture_as_pdf,
                    size: 75,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Resume Status",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Uploaded",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    widget.student.resumeName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Demo Resume Section",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Actual device file uploading is not enabled because this project uses no external packages.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: changeResumeName,
                icon: const Icon(Icons.edit),
                label: const Text("UPDATE RESUME NAME"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// NOTIFICATIONS
// ============================================================

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: notifications.isEmpty
          ? emptyBox(
        "No notifications.",
        Icons.notifications_none,
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          NotificationItem item = notifications[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo.shade50,
                  child: Icon(
                    item.icon,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(item.message),
                      const SizedBox(height: 5),
                      Text(
                        item.time,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// ADMIN DASHBOARD
// ============================================================

class AdminDashboard extends StatefulWidget {
  AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  void logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => LoginScreen(),
      ),
          (route) => false,
    );
  }

  void openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    ).then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int selectedStudents =
        applications.where((a) => a.status == "Selected").length;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Admin Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.indigo,
                    Color(0xFF7986CB),
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.admin_panel_settings,
                    color: Colors.white,
                    size: 45,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome, Administrator",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Manage students, internships and placements.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                AdminStatCard(
                  title: "Students",
                  value: students.length.toString(),
                  icon: Icons.people,
                ),
                AdminStatCard(
                  title: "Internships",
                  value: internships.length.toString(),
                  icon: Icons.work,
                ),
                AdminStatCard(
                  title: "Placements",
                  value: placements.length.toString(),
                  icon: Icons.business_center,
                ),
                AdminStatCard(
                  title: "Applications",
                  value: applications.length.toString(),
                  icon: Icons.description,
                ),
                AdminStatCard(
                  title: "Selected",
                  value: selectedStudents.toString(),
                  icon: Icons.check_circle,
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Management",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            adminMenu(
              "Manage Students",
              "View registered students",
              Icons.people_outline,
                  () {
                openPage(AdminStudentsPage());
              },
            ),
            adminMenu(
              "Manage Internships",
              "Add, edit or delete internships",
              Icons.work_outline,
                  () {
                openPage(AdminInternshipsPage());
              },
            ),
            adminMenu(
              "Manage Placements",
              "Add, edit or delete placements",
              Icons.business_center_outlined,
                  () {
                openPage(AdminPlacementsPage());
              },
            ),
            adminMenu(
              "Manage Applications",
              "Review and update applications",
              Icons.description_outlined,
                  () {
                openPage(AdminApplicationsPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// ADMIN STUDENTS
// ============================================================

class AdminStudentsPage extends StatefulWidget {
  AdminStudentsPage({super.key});

  @override
  State<AdminStudentsPage> createState() => _AdminStudentsPageState();
}

class _AdminStudentsPageState extends State<AdminStudentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Students"),
      ),
      body: students.isEmpty
          ? emptyBox(
        "No students registered.",
        Icons.people_outline,
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: students.length,
        itemBuilder: (context, index) {
          Student student = students[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade50,
                child: const Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
              ),
              title: Text(
                student.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(student.email),
              children: [
                infoTile(
                  Icons.school,
                  "College",
                  student.college,
                ),
                infoTile(
                  Icons.account_tree,
                  "Department",
                  student.department,
                ),
                infoTile(
                  Icons.menu_book,
                  "Course",
                  student.course,
                ),
                infoTile(
                  Icons.calendar_today,
                  "Year",
                  student.year,
                ),
                infoTile(
                  Icons.badge,
                  "Student ID",
                  student.studentId,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// ADMIN INTERNSHIPS
// ============================================================

class AdminInternshipsPage extends StatefulWidget {
  AdminInternshipsPage({super.key});

  @override
  State<AdminInternshipsPage> createState() =>
      _AdminInternshipsPageState();
}

class _AdminInternshipsPageState
    extends State<AdminInternshipsPage> {
  void addInternship() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => InternshipFormPage(),
      ),
    ).then((_) {
      setState(() {});
    });
  }

  void editInternship(Internship internship) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => InternshipFormPage(
          internship: internship,
        ),
      ),
    ).then((_) {
      setState(() {});
    });
  }

  void deleteInternship(Internship internship) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Internship"),
          content: Text(
            "Delete ${internship.title}?",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  internships.remove(internship);
                });

                Navigator.pop(context);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Internships"),
        actions: [
          IconButton(
            onPressed: addInternship,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: addInternship,
        icon: const Icon(Icons.add),
        label: const Text("Add Internship"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
        itemCount: internships.length,
        itemBuilder: (context, index) {
          Internship item = internships[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade50,
                child: const Icon(
                  Icons.work,
                  color: Colors.indigo,
                ),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${item.company} • ${item.location}",
              ),
              trailing: PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == "edit") {
                    editInternship(item);
                  }

                  if (value == "delete") {
                    deleteInternship(item);
                  }
                },
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: "edit",
                    child: Text("Edit"),
                  ),
                  PopupMenuItem(
                    value: "delete",
                    child: Text("Delete"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// INTERNSHIP FORM
// ============================================================

class InternshipFormPage extends StatefulWidget {
  final Internship? internship;

  InternshipFormPage({
    super.key,
    this.internship,
  });

  @override
  State<InternshipFormPage> createState() =>
      _InternshipFormPageState();
}

class _InternshipFormPageState
    extends State<InternshipFormPage> {
  final company = TextEditingController();
  final title = TextEditingController();
  final description = TextEditingController();
  final responsibilities = TextEditingController();
  final location = TextEditingController();
  final duration = TextEditingController();
  final stipend = TextEditingController();
  final workMode = TextEditingController();
  final skills = TextEditingController();
  final eligibility = TextEditingController();
  final deadline = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.internship != null) {
      Internship item = widget.internship!;

      company.text = item.company;
      title.text = item.title;
      description.text = item.description;
      responsibilities.text = item.responsibilities;
      location.text = item.location;
      duration.text = item.duration;
      stipend.text = item.stipend;
      workMode.text = item.workMode;
      skills.text = item.skills;
      eligibility.text = item.eligibility;
      deadline.text = item.deadline;
    }
  }

  void save() {
    if (company.text.trim().isEmpty ||
        title.text.trim().isEmpty ||
        location.text.trim().isEmpty ||
        duration.text.trim().isEmpty ||
        stipend.text.trim().isEmpty) {
      showMessage(context, "Please fill the required fields.");
      return;
    }

    if (widget.internship == null) {
      internships.add(
        Internship(
          id: "I${internships.length + 1}",
          company: company.text.trim(),
          title: title.text.trim(),
          description: description.text.trim(),
          responsibilities: responsibilities.text.trim(),
          skills: skills.text.trim(),
          eligibility: eligibility.text.trim(),
          duration: duration.text.trim(),
          stipend: stipend.text.trim(),
          location: location.text.trim(),
          workMode: workMode.text.trim(),
          deadline: deadline.text.trim(),
        ),
      );
    } else {
      Internship item = widget.internship!;

      item.company = company.text.trim();
      item.title = title.text.trim();
      item.description = description.text.trim();
      item.responsibilities = responsibilities.text.trim();
      item.skills = skills.text.trim();
      item.eligibility = eligibility.text.trim();
      item.duration = duration.text.trim();
      item.stipend = stipend.text.trim();
      item.location = location.text.trim();
      item.workMode = workMode.text.trim();
      item.deadline = deadline.text.trim();
    }

    showMessage(
      context,
      widget.internship == null
          ? "Internship added."
          : "Internship updated.",
    );

    Navigator.pop(context);
  }

  Widget input(
      String label,
      TextEditingController controller, {
        int maxLines = 1,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool editing = widget.internship != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          editing ? "Edit Internship" : "Add Internship",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            input("Company *", company),
            input("Internship Title *", title),
            input(
              "Description",
              description,
              maxLines: 3,
            ),
            input(
              "Responsibilities",
              responsibilities,
              maxLines: 3,
            ),
            input("Location *", location),
            input("Duration *", duration),
            input("Stipend *", stipend),
            input("Work Mode", workMode),
            input("Skills", skills),
            input("Eligibility", eligibility),
            input("Deadline", deadline),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: save,
                child: Text(
                  editing
                      ? "UPDATE INTERNSHIP"
                      : "ADD INTERNSHIP",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// ADMIN PLACEMENTS
// ============================================================

class AdminPlacementsPage extends StatefulWidget {
  AdminPlacementsPage({super.key});

  @override
  State<AdminPlacementsPage> createState() =>
      _AdminPlacementsPageState();
}

class _AdminPlacementsPageState
    extends State<AdminPlacementsPage> {
  void addPlacement() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PlacementFormPage(),
      ),
    ).then((_) {
      setState(() {});
    });
  }

  void editPlacement(Placement placement) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PlacementFormPage(
          placement: placement,
        ),
      ),
    ).then((_) {
      setState(() {});
    });
  }

  void deletePlacement(Placement placement) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Placement"),
          content: Text(
            "Delete ${placement.title}?",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  placements.remove(placement);
                });

                Navigator.pop(context);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Placements"),
        actions: [
          IconButton(
            onPressed: addPlacement,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: addPlacement,
        icon: const Icon(Icons.add),
        label: const Text("Add Placement"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
        itemCount: placements.length,
        itemBuilder: (context, index) {
          Placement item = placements[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade50,
                child: const Icon(
                  Icons.business_center,
                  color: Colors.indigo,
                ),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${item.company} • ${item.salary}",
              ),
              trailing: PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == "edit") {
                    editPlacement(item);
                  }

                  if (value == "delete") {
                    deletePlacement(item);
                  }
                },
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: "edit",
                    child: Text("Edit"),
                  ),
                  PopupMenuItem(
                    value: "delete",
                    child: Text("Delete"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// PLACEMENT FORM
// ============================================================

class PlacementFormPage extends StatefulWidget {
  final Placement? placement;

  PlacementFormPage({
    super.key,
    this.placement,
  });

  @override
  State<PlacementFormPage> createState() =>
      _PlacementFormPageState();
}

class _PlacementFormPageState
    extends State<PlacementFormPage> {
  final company = TextEditingController();
  final title = TextEditingController();
  final description = TextEditingController();
  final responsibilities = TextEditingController();
  final location = TextEditingController();
  final salary = TextEditingController();
  final jobType = TextEditingController();
  final skills = TextEditingController();
  final eligibility = TextEditingController();
  final selectionProcess = TextEditingController();
  final deadline = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.placement != null) {
      Placement item = widget.placement!;

      company.text = item.company;
      title.text = item.title;
      description.text = item.description;
      responsibilities.text = item.responsibilities;
      location.text = item.location;
      salary.text = item.salary;
      jobType.text = item.jobType;
      skills.text = item.skills;
      eligibility.text = item.eligibility;
      selectionProcess.text = item.selectionProcess;
      deadline.text = item.deadline;
    }
  }

  void save() {
    if (company.text.trim().isEmpty ||
        title.text.trim().isEmpty ||
        location.text.trim().isEmpty ||
        salary.text.trim().isEmpty) {
      showMessage(context, "Please fill the required fields.");
      return;
    }

    if (widget.placement == null) {
      placements.add(
        Placement(
          id: "P${placements.length + 1}",
          company: company.text.trim(),
          title: title.text.trim(),
          description: description.text.trim(),
          responsibilities: responsibilities.text.trim(),
          skills: skills.text.trim(),
          eligibility: eligibility.text.trim(),
          salary: salary.text.trim(),
          location: location.text.trim(),
          jobType: jobType.text.trim(),
          selectionProcess: selectionProcess.text.trim(),
          deadline: deadline.text.trim(),
        ),
      );
    } else {
      Placement item = widget.placement!;

      item.company = company.text.trim();
      item.title = title.text.trim();
      item.description = description.text.trim();
      item.responsibilities = responsibilities.text.trim();
      item.skills = skills.text.trim();
      item.eligibility = eligibility.text.trim();
      item.salary = salary.text.trim();
      item.location = location.text.trim();
      item.jobType = jobType.text.trim();
      item.selectionProcess = selectionProcess.text.trim();
      item.deadline = deadline.text.trim();
    }

    showMessage(
      context,
      widget.placement == null
          ? "Placement added."
          : "Placement updated.",
    );

    Navigator.pop(context);
  }

  Widget input(
      String label,
      TextEditingController controller, {
        int maxLines = 1,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool editing = widget.placement != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          editing ? "Edit Placement" : "Add Placement",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            input("Company *", company),
            input("Job Role *", title),
            input(
              "Description",
              description,
              maxLines: 3,
            ),
            input(
              "Responsibilities",
              responsibilities,
              maxLines: 3,
            ),
            input("Location *", location),
            input("Salary / Package *", salary),
            input("Job Type", jobType),
            input("Skills", skills),
            input("Eligibility", eligibility),
            input(
              "Selection Process",
              selectionProcess,
              maxLines: 2,
            ),
            input("Deadline", deadline),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: save,
                child: Text(
                  editing
                      ? "UPDATE PLACEMENT"
                      : "ADD PLACEMENT",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// ADMIN APPLICATIONS
// ============================================================

class AdminApplicationsPage extends StatefulWidget {
  AdminApplicationsPage({super.key});

  @override
  State<AdminApplicationsPage> createState() =>
      _AdminApplicationsPageState();
}

class _AdminApplicationsPageState
    extends State<AdminApplicationsPage> {
  final List<String> statuses = [
    "Applied",
    "Under Review",
    "Shortlisted",
    "Interview",
    "Selected",
    "Rejected",
  ];

  void updateStatus(
      Application application,
      String status,
      ) {
    setState(() {
      application.status = status;
    });

    notifications.insert(
      0,
      NotificationItem(
        title: "Application Status Updated",
        message:
        "${application.title}: status changed to $status.",
        time: "Just now",
        icon: Icons.update,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Applications"),
      ),
      body: applications.isEmpty
          ? emptyBox(
        "No applications received.",
        Icons.description_outlined,
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: applications.length,
        itemBuilder: (context, index) {
          Application item = applications[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                        Colors.indigo.shade50,
                        child: const Icon(
                          Icons.person,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.studentName,
                              style: const TextStyle(
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                            Text(item.studentEmail),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 25),
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(item.company),
                  const SizedBox(height: 5),
                  Text(
                    "${item.type} • ${item.date}",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        "Status:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: item.status,
                          decoration:
                          const InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 5,
                            ),
                          ),
                          items: statuses
                              .map(
                                (status) =>
                                DropdownMenuItem(
                                  value: status,
                                  child: Text(status),
                                ),
                          )
                              .toList(),
                          onChanged: (value) {
                            if (value != null) {
                              updateStatus(
                                item,
                                value,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// REUSABLE WIDGETS
// ============================================================

class OpportunityCard extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String subtitle;
  final IconData icon;
  final String? extra;
  final VoidCallback onTap;

  OpportunityCard({
    super.key,
    required this.title,
    required this.company,
    required this.location,
    required this.subtitle,
    required this.icon,
    this.extra,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  icon,
                  color: Colors.indigo,
                  size: 28,
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      company,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          location,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (extra != null) ...[
                      const SizedBox(height: 3),
                      Text(
                        extra!,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ApplicationCard extends StatelessWidget {
  final Application application;
  final VoidCallback? onTap;

  ApplicationCard({
    super.key,
    required this.application,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade50,
          child: Icon(
            application.type == "Internship"
                ? Icons.work
                : Icons.business_center,
            color: Colors.indigo,
          ),
        ),
        title: Text(
          application.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${application.company}\n${application.date}",
        ),
        isThreeLine: true,
        trailing: statusBadge(application.status),
      ),
    );
  }
}

class AdminStatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  AdminStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.indigo,
              size: 30,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// HELPER FUNCTIONS
// ============================================================

Widget statCard(
    String title,
    String value,
    IconData icon,
    ) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          color: Colors.indigo,
          size: 25,
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

Widget sectionTitle(
    String title,
    VoidCallback onSeeAll,
    ) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
        onPressed: onSeeAll,
        child: const Text("See All"),
      ),
    ],
  );
}

Widget emptyBox(
    String text,
    IconData icon,
    ) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 65,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 15),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget statusBadge(String status) {
  Color background;
  Color foreground;

  switch (status) {
    case "Selected":
      background = Colors.green.shade100;
      foreground = Colors.green.shade800;
      break;

    case "Rejected":
      background = Colors.red.shade100;
      foreground = Colors.red.shade800;
      break;

    case "Shortlisted":
      background = Colors.blue.shade100;
      foreground = Colors.blue.shade800;
      break;

    case "Interview":
      background = Colors.orange.shade100;
      foreground = Colors.orange.shade800;
      break;

    case "Under Review":
      background = Colors.purple.shade100;
      foreground = Colors.purple.shade800;
      break;

    default:
      background = Colors.grey.shade200;
      foreground = Colors.grey.shade800;
  }

  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 6,
    ),
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      status,
      style: TextStyle(
        color: foreground,
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget detailHeader(
    String company,
    String title,
    IconData icon,
    ) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Colors.indigo,
          Color(0xFF7986CB),
        ],
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 35,
            color: Colors.indigo,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          company,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget infoGrid(List<List<String>> values) {
  return Wrap(
    spacing: 10,
    runSpacing: 10,
    children: values.map((value) {
      return Container(
        width: 160,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              value[0],
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value[1],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }).toList(),
  );
}

Widget detailSection(
    String title,
    String content,
    ) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 15),
    padding: const EdgeInsets.all(17),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(
            color: Colors.grey.shade700,
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}

Widget infoTile(
    IconData icon,
    String title,
    String value,
    ) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.indigo,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget profileTile(
    IconData icon,
    String title,
    String value,
    ) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.indigo,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget adminMenu(
    String title,
    String subtitle,
    IconData icon,
    VoidCallback onTap,
    ) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: Colors.indigo,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    ),
  );
}

void showMessage(
    BuildContext context,
    String message,
    ) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

String currentDate() {
  DateTime now = DateTime.now();

  return "${now.day.toString().padLeft(2, '0')}/"
      "${now.month.toString().padLeft(2, '0')}/"
      "${now.year}";
}