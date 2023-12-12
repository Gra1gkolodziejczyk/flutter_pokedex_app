import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter_clean_archi_bloc/injection_container.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/routes/app_routes.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>sl<UserBloc>(),
        ),
        BlocProvider(
          create: (context) =>sl<PokemonBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
