import 'package:flutter/material.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rony Portfolio",
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            //----------------PROFILE----------------
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/rony_ahmmed.jpg"),
            ),

            const SizedBox(height: 15),

            const Text(
              "Md. Rony Ahmmed Shah",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "👑 Web Developer",
              style: TextStyle(
                fontSize: 18,
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
              ),
            ),

            const Text("💻 Flutter Developer", style: TextStyle(fontSize: 16)),

            const Text(
              "🎓 B.Sc. (Engg.) in Educational Technology & Engineering",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 25),

            //----------------ABOUT----------------
            buildTitle("🚀 About Me"),

            buildCard(
              "Hello! I'm Md. Rony Ahmmed Shah, currently studying "
              "B.Sc. (Engg.) in Educational Technology and Engineering "
              "at the University of Frontier Technology, Bangladesh (UFTB).\n\n"
              "I love Web Development, Flutter, Artificial Intelligence, "
              "Machine Learning, and Software Engineering. "
              "I enjoy writing clean code and sharing knowledge through "
              "teaching, blogging, and creating digital content.",
            ),

            //----------------ACADEMIC----------------
            buildTitle("🎓 Academic Information"),

            buildInfoCard(
              Icons.school,
              "University",
              "University of Frontier Technology, Bangladesh",
            ),

            buildInfoCard(
              Icons.account_balance,
              "Faculty",
              "Digital Transformation Engineering",
            ),

            buildInfoCard(
              Icons.computer,
              "Department",
              "Educational Technology & Engineering",
            ),

            buildInfoCard(Icons.badge, "Student ID", "2002035"),

            buildInfoCard(Icons.calendar_month, "Session", "2020-2021"),

            const SizedBox(height: 20),

            //----------------SKILLS----------------
            buildTitle("💻 Skills"),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Chip(label: Text("Flutter")),
                Chip(label: Text("Dart")),
                Chip(label: Text("Laravel")),
                Chip(label: Text("PHP")),
                Chip(label: Text("Python")),
                Chip(label: Text("Java")),
                Chip(label: Text("C++")),
                Chip(label: Text("JavaScript")),
                Chip(label: Text("HTML5")),
                Chip(label: Text("CSS3")),
                Chip(label: Text("Bootstrap")),
                Chip(label: Text("MySQL")),
                Chip(label: Text("Firebase")),
                Chip(label: Text("AI")),
                Chip(label: Text("Machine Learning")),
                Chip(label: Text("Deep Learning")),
                Chip(label: Text("OpenAI API")),
                Chip(label: Text("Git")),
                Chip(label: Text("GitHub")),
                Chip(label: Text("Android Studio")),
                Chip(label: Text("Kotlin")),
                Chip(label: Text("AR")),
                Chip(label: Text("VR")),
                Chip(label: Text("XR")),
              ],
            ),

            const SizedBox(height: 25),

            //----------------CAREER----------------
            buildTitle("🎯 Career Objective"),

            buildCard(
              "My goal is to become a professional Software Engineer "
              "specializing in Web Development, Mobile App Development, "
              "and Artificial Intelligence. I want to build innovative "
              "applications that improve education and make people's lives easier.",
            ),

            //----------------CONTACT----------------
            buildTitle("📞 Contact Information"),

            buildInfoCard(Icons.email, "Email", "bdu.rony@gmail.com"),

            buildInfoCard(Icons.phone, "Phone", "+8801XXXXXXXXX"),

            buildInfoCard(Icons.location_on, "Location", "Gazipur, Bangladesh"),

            buildInfoCard(Icons.code, "GitHub", "github.com/rony7s"),

            buildInfoCard(
              Icons.business,
              "LinkedIn",
              "linkedin.com/in/ronyahmmed",
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.contact_mail),
                label: const Text("Contact Me", style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ContactPage()),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, top: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
      ),
    );
  }

  Widget buildCard(String text) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(text, style: const TextStyle(fontSize: 16, height: 1.6)),
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
