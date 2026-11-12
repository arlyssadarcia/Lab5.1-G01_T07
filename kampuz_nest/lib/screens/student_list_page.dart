// Created by: Erica Flora anak Erwin (102544)
import 'package:flutter/material.dart';

import '../data/students.dart';
import 'student_detail_page.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Students')),
      body: ListView.builder(
        itemCount: sampleStudents.length,
        itemBuilder: (context, index) {
          final student = sampleStudents[index];
          return ListTile(
            leading: CircleAvatar(child: Text(student.name[0])),
            title: Text(student.name),
            subtitle: Text('${student.matric} • ${student.programme}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StudentDetailPage(student: student),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
