import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_picker_example/routes/routes.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (value) => _onDestinationSelected(
          value,
          context,
        ),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_sharp),
            label: 'Stats',
          ),
        ],
      ),
    );
  }

  static int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(const StatsRoute().location)) {
      return 1;
    }
    return 0;
  }

  void _onDestinationSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        const WelcomeRoute().go(context);
      case 1:
        const StatsRoute().go(context);
    }
  }
}
