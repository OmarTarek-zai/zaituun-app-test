// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $dummyRoute,
      $onboardingRoute,
      $loginRoute,
      $feedRoute,
      $searchAiRoute,
      $newPostRoute,
      $onePostRoute,
      $signUpRoute,
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

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding',
      name: 'onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      name: 'login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $feedRoute => GoRouteData.$route(
      path: '/',
      name: 'home',
      factory: $FeedRouteExtension._fromState,
    );

extension $FeedRouteExtension on FeedRoute {
  static FeedRoute _fromState(GoRouterState state) => const FeedRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $searchAiRoute => GoRouteData.$route(
      path: '/search-ai',
      name: 'search-ai',
      factory: $SearchAiRouteExtension._fromState,
    );

extension $SearchAiRouteExtension on SearchAiRoute {
  static SearchAiRoute _fromState(GoRouterState state) => const SearchAiRoute();

  String get location => GoRouteData.$location(
        '/search-ai',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $newPostRoute => GoRouteData.$route(
      path: '/new-post',
      name: 'new-post',
      factory: $NewPostRouteExtension._fromState,
    );

extension $NewPostRouteExtension on NewPostRoute {
  static NewPostRoute _fromState(GoRouterState state) => const NewPostRoute();

  String get location => GoRouteData.$location(
        '/new-post',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onePostRoute => GoRouteData.$route(
      path: '/post/:id',
      name: 'post',
      factory: $OnePostRouteExtension._fromState,
    );

extension $OnePostRouteExtension on OnePostRoute {
  static OnePostRoute _fromState(GoRouterState state) => OnePostRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/post/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
      path: '/sign-up',
      name: 'sign-up',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign-up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
