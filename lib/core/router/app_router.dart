import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaituun/ui/screens/dummy/dummy_screen.dart';
import 'package:zaituun/ui/screens/feed/feed_screen.dart';
import 'package:zaituun/ui/screens/login/login_screen.dart';
import 'package:zaituun/ui/screens/new_post/new_post_screen.dart';
import 'package:zaituun/ui/screens/onboarding/onboarding_screen.dart';
import 'package:zaituun/ui/screens/one_post/one_post_screen.dart';
import 'package:zaituun/ui/screens/search_ai/search_ai_screen.dart';
import 'package:zaituun/ui/screens/sign_up/sign_up_screen.dart';

part 'app_router.g.dart';

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: const OnboardingRoute().location,
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

@TypedGoRoute<OnboardingRoute>(
  path: '/onboarding',
  name: 'onboarding',
)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingScreen();
}

@TypedGoRoute<LoginRoute>(
  path: '/login',
  name: 'login',
)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<FeedRoute>(
  path: '/',
  name: 'home',
)
class FeedRoute extends GoRouteData {
  const FeedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const FeedScreen();
}

@TypedGoRoute<SearchAiRoute>(
  path: '/search-ai',
  name: 'search-ai',
)
class SearchAiRoute extends GoRouteData {
  const SearchAiRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SearchAiScreen();
}

@TypedGoRoute<NewPostRoute>(
  path: '/new-post',
  name: 'new-post',
)
class NewPostRoute extends GoRouteData {
  const NewPostRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NewPostScreen();
}

@TypedGoRoute<OnePostRoute>(
  path: '/post/:id',
  name: 'post',
)
class OnePostRoute extends GoRouteData {
  const OnePostRoute(this.id);
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnePostScreen();
}

@TypedGoRoute<SignUpRoute>(
  path: '/sign-up',
  name: 'sign-up',
)
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignUpScreen();
}
