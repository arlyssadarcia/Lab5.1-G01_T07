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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          _pages[appState.currentIndex],
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                ),
              ),
            ),
          ),
        ],
      ),
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
