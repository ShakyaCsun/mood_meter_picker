// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeShellRouteData,
    ];

RouteBase get $homeShellRouteData => ShellRouteData.$route(
      navigatorKey: HomeShellRouteData.$navigatorKey,
      factory: $HomeShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $WelcomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'stats',
              factory: $StatsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'add',
              parentNavigatorKey: AddMoodEntryRoute.$parentNavigatorKey,
              factory: $AddMoodEntryRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':moodName/remarks',
                  parentNavigatorKey: RemarksRoute.$parentNavigatorKey,
                  factory: $RemarksRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $HomeShellRouteDataExtension on HomeShellRouteData {
  static HomeShellRouteData _fromState(GoRouterState state) =>
      const HomeShellRouteData();
}

extension $WelcomeRouteExtension on WelcomeRoute {
  static WelcomeRoute _fromState(GoRouterState state) => const WelcomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StatsRouteExtension on StatsRoute {
  static StatsRoute _fromState(GoRouterState state) => const StatsRoute();

  String get location => GoRouteData.$location(
        '/stats',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddMoodEntryRouteExtension on AddMoodEntryRoute {
  static AddMoodEntryRoute _fromState(GoRouterState state) =>
      const AddMoodEntryRoute();

  String get location => GoRouteData.$location(
        '/add',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RemarksRouteExtension on RemarksRoute {
  static RemarksRoute _fromState(GoRouterState state) => RemarksRoute(
        moodName: state.pathParameters['moodName']!,
      );

  String get location => GoRouteData.$location(
        '/add/${Uri.encodeComponent(moodName)}/remarks',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
