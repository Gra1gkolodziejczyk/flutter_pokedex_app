import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/pages/home_screen.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/pages/login_screen.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/pages/register_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes : [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);