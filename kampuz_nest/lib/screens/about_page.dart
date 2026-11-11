// Aina
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: ListView(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(color: Colors.teal),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 80,
                    color: Colors.teal.shade700.withValues(alpha: 0.35),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.school, size: 48, color: Colors.teal),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'KampuzNest',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Student Management App',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About this app',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'KampuzNest helps students and staff browse student '
                  'information, records, and programmes in one place.',
                ),
                SizedBox(height: 20),
                Text(
                  'Developers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Group G01_T07 — TMA3084 Software Engineering Lab'),
                SizedBox(height: 8),
                Text('Lab Exercise 5.1'),
                SizedBox(height: 20),
                Text('Built with Flutter, Provider, and GitHub Actions CI.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
