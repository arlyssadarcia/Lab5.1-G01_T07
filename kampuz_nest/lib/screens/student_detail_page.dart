// Erica
import 'package:flutter/material.dart';

import '../data/students.dart';

class StudentDetailPage extends StatelessWidget {
  final Student student;

  const StudentDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Center(
        child: Text(
          'Details for ${student.name} — Erica (102544) will build this',
        ),
      ),
    );
  }
}
