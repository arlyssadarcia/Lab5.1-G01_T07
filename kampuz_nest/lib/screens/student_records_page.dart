import 'package:flutter/material.dart';

import '../data/students.dart';

class StudentRecordsPage extends StatefulWidget {
  const StudentRecordsPage({super.key});
  @override
  State<StudentRecordsPage> createState() => _StudentRecordsPageState();
}

class _StudentRecordsPageState extends State<StudentRecordsPage> {
  late List<Student> _students;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    _students = List<Student>.from(sampleStudents);
  }

  void _sort<T>(
    Comparable<T> Function(Student student) getField,
    int columnIndex,
    bool ascending,
  ) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
      _students.sort((a, b) {
        final aValue = getField(a);
        final bValue = getField(b);
        return ascending
            ? Comparable.compare(aValue, bValue)
            : Comparable.compare(bValue, aValue);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Records')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _sortColumnIndex,
            sortAscending: _sortAscending,
            columns: [
              DataColumn(
                label: const Text('Name'),
                onSort: (columnIndex, ascending) {
                  _sort<String>((s) => s.name, columnIndex, ascending);
                },
              ),
              DataColumn(
                label: const Text('Matric'),
                onSort: (columnIndex, ascending) {
                  _sort<String>((s) => s.matric, columnIndex, ascending);
                },
              ),
              const DataColumn(label: Text('Programme')),
              DataColumn(
                label: const Text('CGPA'),
                numeric: true,
                onSort: (columnIndex, ascending) {
                  _sort<num>((s) => s.cgpa, columnIndex, ascending);
                },
              ),
            ],
            rows: _students.map((student) {
              return DataRow(
                cells: [
                  DataCell(Text(student.name)),
                  DataCell(Text(student.matric)),
                  DataCell(Text(student.programme)),
                  DataCell(Text(student.cgpa.toStringAsFixed(2))),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
