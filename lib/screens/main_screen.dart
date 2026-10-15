import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab2Screen(),
    Tab1Screen(),
    Tab4Screen(),
    Tab3Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.format_list_bulleted_outlined),
          selectedIcon: const Icon(Icons.format_list_bulleted, color: AppTheme.primaryColor),
          label: 'Backlog',
        ),
        NavigationDestination(
          icon: const Icon(Icons.view_kanban_outlined),
          selectedIcon: const Icon(Icons.view_kanban, color: AppTheme.primaryColor),
          label: 'Board',
        ),
        NavigationDestination(
          icon: const Icon(Icons.insights_outlined),
          selectedIcon: const Icon(Icons.insights, color: AppTheme.primaryColor),
          label: 'Metrics',
        ),
        NavigationDestination(
          icon: const Icon(Icons.flag_outlined),
          selectedIcon: const Icon(Icons.flag, color: AppTheme.primaryColor),
          label: 'Sprints',
        ),
        ],
      ),
    );
  }
}
