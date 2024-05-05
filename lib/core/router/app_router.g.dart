// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $dummyRoute,
    ];

RouteBase get $dummyRoute => GoRouteData.$route(
      path: '/dummy',
      name: 'dummy',
      factory: $DummyRouteExtension._fromState,
    );

extension $DummyRouteExtension on DummyRoute {
  static DummyRoute _fromState(GoRouterState state) => DummyRoute(
        title: state.uri.queryParameters['title']!,
      );

  String get location => GoRouteData.$location(
        '/dummy',
        queryParams: {
          'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
