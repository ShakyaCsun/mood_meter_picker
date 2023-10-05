import 'package:flutter/material.dart';
import 'package:mood_picker_example/routes/app_routes.dart';

export 'app_routes.dart';

class Routes {
  const Routes._();

  static final appRoutes = $appRoutes;

  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final shellNavigatorKey = GlobalKey<NavigatorState>();
}
