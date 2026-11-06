// Arlyssa
import 'package:flutter/material.dart';

import '../data/students.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final total = sampleStudents.length;
    final programmes = sampleStudents.map((s) => s.programme).toSet().length;

    return Scaffold(
      appBar: AppBar(title: const Text('KampuzNest'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.school, size: 80, color: Colors.teal),
            const SizedBox(height: 12),
            const Text(
              'Welcome to KampuzNest!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your campus student management hub.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const Icon(Icons.people, color: Colors.teal),
                title: const Text('Students'),
                trailing: Text('$total'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.category, color: Colors.teal),
                title: const Text('Programmes'),
                trailing: Text('$programmes'),
              ),
            ),
            const Spacer(),
            const Text(
              'Use the bottom navigation or drawer to explore.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
