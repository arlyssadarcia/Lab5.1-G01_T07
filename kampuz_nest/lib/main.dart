import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/app_state.dart';
import 'screens/home_page.dart';
import 'screens/student_list_page.dart';
import 'screens/student_records_page.dart';
import 'screens/programme_tabs_page.dart';
import 'widgets/app_drawer.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const KampuzNestApp(),
    ),
  );
}

class KampuzNestApp extends StatelessWidget {
  const KampuzNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KampuzNest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MainShell(),
    );
  }
}

class MainShell extends StatelessWidget {
  const MainShell({super.key});

  static const _pages = [
    HomePage(),
    StudentListPage(),
    StudentRecordsPage(),
    ProgrammeTabsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return Scaffold(
      drawer: const AppDrawer(),
      body: _pages[appState.currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: appState.currentIndex,
        onDestinationSelected: appState.setIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Students'),
          NavigationDestination(
            icon: Icon(Icons.table_chart),
            label: 'Records',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'Programmes',
          ),
        ],
      ),
    );
  }
}
