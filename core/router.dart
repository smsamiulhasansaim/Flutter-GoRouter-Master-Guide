import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screen/login.dart';
import '../screen/home.dart';
import '../screen/signup.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/signup',
        name: 'signup',
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
    ],

    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text('Page not found')),
    ),
  );
}