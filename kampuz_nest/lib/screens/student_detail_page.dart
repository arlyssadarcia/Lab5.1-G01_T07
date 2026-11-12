// Created by: Erica Flora anak Erwin (102544)
import 'package:flutter/material.dart';

import '../data/students.dart';

class StudentDetailPage extends StatelessWidget {
  final Student student;
  const StudentDetailPage({super.key, required this.student});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                child: Text(
                  student.name[0],
                  style: const TextStyle(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              student.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text('Matric number'),
            SelectableText(
              student.matric,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text('Programme'),
            Text(student.programme),
            const SizedBox(height: 12),
            const Text('Email'),
            SelectableText(student.email, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text('CGPA'),
            Text(student.cgpa.toStringAsFixed(2)),
          ],
        ),
      ),
    );
  }
}
