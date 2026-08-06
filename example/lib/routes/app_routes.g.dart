// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeShellRouteData];

RouteBase get $homeShellRouteData => ShellRouteData.$route(
  navigatorKey: HomeShellRouteData.$navigatorKey,
  factory: $HomeShellRouteDataExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/',
      hasOverriddenOnExit: false,
      factory: $WelcomeRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'stats',
          hasOverriddenOnExit: false,
          factory: $StatsRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'add',
          hasOverriddenOnExit: false,
          parentNavigatorKey: AddMoodEntryRoute.$parentNavigatorKey,
          factory: $AddMoodEntryRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':moodName/remarks',
              hasOverriddenOnExit: false,
              parentNavigatorKey: RemarksRoute.$parentNavigatorKey,
              factory: $RemarksRoute._fromState,
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

mixin $WelcomeRoute on GoRouteData {
  static WelcomeRoute _fromState(GoRouterState state) => const WelcomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $StatsRoute on GoRouteData {
  static StatsRoute _fromState(GoRouterState state) => const StatsRoute();

  @override
  String get location => GoRouteData.$location('/stats');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AddMoodEntryRoute on GoRouteData {
  static AddMoodEntryRoute _fromState(GoRouterState state) =>
      const AddMoodEntryRoute();

  @override
  String get location => GoRouteData.$location('/add');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RemarksRoute on GoRouteData {
  static RemarksRoute _fromState(GoRouterState state) =>
      RemarksRoute(moodName: state.pathParameters['moodName']!);

  RemarksRoute get _self => this as RemarksRoute;

  @override
  String get location => GoRouteData.$location(
    '/add/${Uri.encodeComponent(_self.moodName)}/remarks',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
