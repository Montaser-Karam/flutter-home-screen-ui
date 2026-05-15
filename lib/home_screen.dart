import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff020617), Color(0xff0F172A), Color(0xff1E293B)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),

              const Text(
                "Premium Profile",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),

              const SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.tealAccent, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 25,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage('assets/images/me.png'),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Montaser Karam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.tealAccent),
                ),
              ),

              const SizedBox(height: 40),

              infoCard(Icons.phone, "Phone", "01094620612"),

              const SizedBox(height: 15),

              infoCard(Icons.email, "Email", "mntsrkrm1@gmail.com"),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoCard(IconData icon, String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.tealAccent,
            child: Icon(icon, color: Colors.black),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.white54)),
              const SizedBox(height: 5),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
