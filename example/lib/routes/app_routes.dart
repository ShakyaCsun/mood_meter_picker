import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_picker_example/add_mood_entry/add_mood_entry.dart';
import 'package:mood_picker_example/add_mood_entry/view/remarks.dart';
import 'package:mood_picker_example/routes/routes.dart';
import 'package:mood_picker_example/stats/stats.dart';
import 'package:mood_picker_example/welcome/welcome.dart';
import 'package:mood_picker_example/widgets/bottom_nav_scaffold.dart';

part 'app_routes.g.dart';

@TypedShellRoute<HomeShellRouteData>(
  routes: [
    TypedGoRoute<WelcomeRoute>(
      path: '/',
      routes: [
        TypedGoRoute<StatsRoute>(
          path: 'stats',
        ),
        TypedGoRoute<AddMoodEntryRoute>(
          path: 'add',
          routes: [
            TypedGoRoute<RemarksRoute>(
              path: ':moodName/remarks',
            ),
          ],
        ),
      ],
    ),
  ],
)
class HomeShellRouteData extends ShellRouteData {
  const HomeShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey =
      Routes.shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return BottomNavScaffold(
      child: navigator,
    );
  }
}

class WelcomeRoute extends GoRouteData {
  const WelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WelcomePage();
  }
}

class StatsRoute extends GoRouteData {
  const StatsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const StatsPage();
  }
}

class AddMoodEntryRoute extends GoRouteData {
  const AddMoodEntryRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      Routes.rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddMoodEntryPage();
  }
}

class RemarksRoute extends GoRouteData {
  const RemarksRoute({
    required this.moodName,
  });

  final String moodName;

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      Routes.rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RemarksPage(
      moodPiece: MoodPiece.fromName(moodName)!,
    );
  }

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    if (MoodPiece.fromName(moodName) == null) {
      return const AddMoodEntryRoute().location;
    }
    return null;
  }
}
