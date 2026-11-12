import 'package:flutter/material.dart';

import '../data/students.dart';

class ProgrammeTabsPage extends StatelessWidget {
  const ProgrammeTabsPage({super.key});

  List<Student> _byProgramme(String programme) {
    return sampleStudents
        .where((student) => student.programme == programme)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Programmes'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'SE'),
              Tab(text: 'CS'),
              Tab(text: 'IS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _ProgrammeList(students: _byProgramme('Software Engineering')),
            _ProgrammeList(students: _byProgramme('Computer Science')),
            _ProgrammeList(students: _byProgramme('Information Systems')),
          ],
        ),
      ),
    );
  }
}

class _ProgrammeList extends StatelessWidget {
  final List<Student> students;

  const _ProgrammeList({required this.students});

  @override
  Widget build(BuildContext context) {
    if (students.isEmpty) {
      return const Center(child: Text('No students in this programme'));
    }

    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];

        return ListTile(
          leading: CircleAvatar(child: Text(student.name[0])),
          title: Text(student.name),
          subtitle: Text(student.matric),
        );
      },
    );
  }
}
