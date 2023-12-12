import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_state.dart';
import 'package:flutter_clean_archi_bloc/injection_container.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late UserBloc userBloc;
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  final _formKey = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    userBloc = sl<UserBloc>();
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    userBloc.close();
    username.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      bloc: userBloc,
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pseudo :',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromRGBO(255, 204, 1, 1),
                  ),
                  hintText: 'Entrer votre adresse pseudo',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                controller: username,
              ),
              const Text(
                'Adresse e-mail :',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(255, 204, 1, 1),
                  ),
                  hintText: 'Entrer votre adresse e-mail',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                controller: email,
              ),
              const SizedBox(height: 15),
              const Text(
                'Mot de passe :',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.security,
                    color: Color.fromRGBO(255, 204, 1, 1),
                  ),
                  hintText: 'Entre votre mot de passe',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                controller: password,
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(50, 100, 176, 1),
                  ),
                  onPressed: () {
                    userBloc.add(
                      RegisterEvent(
                        username: username.text,
                        email: email.text,
                        password: password.text,
                      ),
                    );
                    context.go('/login');
                  },
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 204, 1, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
