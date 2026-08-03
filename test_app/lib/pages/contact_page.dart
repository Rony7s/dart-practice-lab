import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Launch any URL
  Future<void> launchLink(Uri uri) async {
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $uri");
    }
  }

  Widget contactTile(
    IconData icon,
    String title,
    String subtitle, {
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: onTap != null
            ? const Icon(Icons.arrow_forward_ios, size: 18)
            : null,
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Me"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/rony_ahmmed.jpg"),
            ),

            const SizedBox(height: 15),

            Text(
              "মোঃ রনি আহম্মেদ শাহ্",
              style: const TextStyle(
                fontFamily: "TiroBangla",
                fontSize: 22,
                height: 1.7,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "আমি মোঃ রনি আহম্মেদ শাহ্। বর্তমানে ইউনিভার্সিটি অব ফ্রন্টিয়ার টেকনোলজি, বাংলাদেশ (UFTB)-এর এডুকেশনাল টেকনোলজি অ্যান্ড ইঞ্জিনিয়ারিং বিভাগে বি.এসসি. (ইঞ্জিনিয়ারিং) অধ্যয়ন করছি। প্রযুক্তি ও শিক্ষার সমন্বয়ে উদ্ভাবনী সমাধান তৈরি করা, বিশেষ করে Web Development, Flutter, Artificial Intelligence (AI) এবং Data Science নিয়ে কাজ করতে আমি আগ্রহী।",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.hindSiliguri(
                    fontSize: 16,
                    height: 1.8,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            contactTile(
              Icons.email,
              "Email",
              "bdu.rony@gmail.com",
              onTap: () => launchLink(Uri.parse("mailto:bdu.rony@gmail.com")),
            ),

            contactTile(
              Icons.phone,
              "Phone",
              "+8801706373000",
              onTap: () => launchLink(Uri.parse("tel:+8801706373000")),
            ),

            contactTile(
              Icons.code,
              "GitHub",
              "github.com/rony7s",
              onTap: () => launchLink(Uri.parse("https://github.com/rony7s")),
            ),

            contactTile(
              Icons.business,
              "LinkedIn",
              "linkedin.com/in/ronyahmmed",
              onTap: () =>
                  launchLink(Uri.parse("https://linkedin.com/in/ronyahmmed")),
            ),

            contactTile(
              Icons.location_on,
              "Location",
              "Gazipur, Bangladesh",
              onTap: () => launchLink(
                Uri.parse(
                  "https://www.google.com/maps/search/?api=1&query=Gazipur,Bangladesh",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
