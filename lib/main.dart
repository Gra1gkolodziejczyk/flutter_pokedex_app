import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/config/routes/app_routes.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/repository/user_repository.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/page/login/login_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: BlocProvider(
        create: (context) => AuthenticationBloc(
          userRepository: UserRepository(),
        ),
        child: const LoginScreen(),
      ),
    );
  }
}
