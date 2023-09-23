
import 'package:flutter_application_7go_router/pages/about.dart';
import 'package:flutter_application_7go_router/pages/contact_us.dart';
import 'package:flutter_application_7go_router/pages/home.dart';
import 'package:flutter_application_7go_router/pages/profile.dart';
import 'package:flutter_application_7go_router/project/routes/app_route_constant.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: MyAppRouteConstants.homeRouteName,
      path: '/',
      builder: (context, state) => Home(),
    ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile/:username/:userid',
        builder: (context, state) =>Profile(userid: state.pathParameters['userid']!,username: state.pathParameters['username']!),
      ),
    GoRoute(
      name: MyAppRouteConstants.aboutRouteName,
      path: '/about',
      builder: (context, state) => About(),
    ),
    GoRoute(
      name: MyAppRouteConstants.contactRouteName,
      path: '/contact',
      builder: (context, state) =>Contact(),
    ),
  ],
);
