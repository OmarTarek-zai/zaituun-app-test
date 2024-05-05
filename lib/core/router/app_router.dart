import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaituun/ui/screens/dummy/dummy_screen.dart';

part 'app_router.g.dart';

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: const DummyRoute(title: 'Dummy Route').location,
);

/// Dummy Route
@TypedGoRoute<DummyRoute>(
  path: '/dummy',
  name: 'dummy',
)
class DummyRoute extends GoRouteData {
  const DummyRoute({required this.title});
  final String title;

  @override
  Widget build(BuildContext context, GoRouterState state) => DummyScreen(
        title: title,
      );
}
