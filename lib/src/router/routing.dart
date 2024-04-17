import 'package:flutter/material.dart';
import 'package:flutter_todo_riverpod_gorouter_firebase/src/features/auth/screens/sign_in_screen.dart';
import 'package:flutter_todo_riverpod_gorouter_firebase/src/features/home/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { signIn, createAccount, home, addTodo, editTodo }

final appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/signIn',
      name: AppRoutes.signIn.name,
      builder: (context, state) => const SignInScreen(),
    )
  ],
  errorBuilder: (context, state) => const Text("Not Found"),
);
