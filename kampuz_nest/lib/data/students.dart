class Student {
  final String name;
  final String matric;
  final String programme;
  final String email;
  final double cgpa;

  const Student({
    required this.name,
    required this.matric,
    required this.programme,
    required this.email,
    required this.cgpa,
  });
}

const List<Student> sampleStudents = [
  Student(
    name: 'Drake Tan',
    matric: '123456',
    programme: 'Software Engineering',
    email: 'drake@siswa.unimas.my',
    cgpa: 3.45,
  ),
  Student(
    name: 'Ali Weeknd',
    matric: '123457',
    programme: 'Software Engineering',
    email: 'weeknd@siswa.unimas.my',
    cgpa: 3.78,
  ),
  Student(
    name: 'Micheal Jacksong',
    matric: '123458',
    programme: 'Data Engineering',
    email: 'micheal@siswa.unimas.my',
    cgpa: 3.20,
  ),
  Student(
    name: 'Arianah Gran',
    matric: '123459',
    programme: 'Computational Science',
    email: 'arianah@siswa.unimas.my',
    cgpa: 3.55,
  ),
  Student(
    name: 'Mark Adam',
    matric: '123461',
    programme: 'Multimedia Computing',
    email: 'mark@siswa.unimas.my',
    cgpa: 3.90,
  ),
  Student(
    name: 'Lonard diCapri',
    matric: '123462',
    programme: 'Network Computing',
    email: 'lonardo@siswa.unimas.my',
    cgpa: 2.95,
  ),
  Student(
    name: 'Charly Poof',
    matric: '123463',
    programme: 'Computational Science',
    email: 'charly@siswa.unimas.my',
    cgpa: 3.67,
  ),
  Student(
    name: 'Jasteen Beeber',
    matric: '123464',
    programme: 'Software Engineering',
    email: 'jasteen@siswa.unimas.my',
    cgpa: 3.10,
  ),
  Student(
    name: 'Shakira Kira',
    matric: '123465',
    programme: 'Network Computing',
    email: 'shakira@siswa.unimas.my',
    cgpa: 3.82,
  ),
  Student(
    name: 'Kevin Bob',
    matric: '123466',
    programme: 'Data Engineering',
    email: 'kevin@siswa.unimas.my',
    cgpa: 3.33,
  ),
];
