import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import '../screens/about_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppState>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Text(
              'KampuzNest',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              appState.setIndex(0);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Student Information'),
            onTap: () {
              Navigator.pop(context);
              appState.setIndex(1);
            },
          ),
          ListTile(
            leading: const Icon(Icons.table_chart),
            title: const Text('Student Records'),
            onTap: () {
              Navigator.pop(context);
              appState.setIndex(2);
            },
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Programmes'),
            onTap: () {
              Navigator.pop(context);
              appState.setIndex(3);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings coming soon')),
              );
            },
          ),
        ],
      ),
    );
  }
}
