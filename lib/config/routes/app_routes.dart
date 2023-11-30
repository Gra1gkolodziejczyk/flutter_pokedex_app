import 'package:flutter/material.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/page/login/login_screen.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/page/register/register_screen.dart';
import 'package:flutter_clean_archi_bloc/feature/home/presentation/page/home_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const HomeScreen());

      case '/login':
        return _materialRoute(const LoginScreen());

      case '/register':
        return _materialRoute(const RegisterScreen());
        
      default:
        return _materialRoute(const HomeScreen());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}