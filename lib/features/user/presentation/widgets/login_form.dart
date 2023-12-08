import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_state.dart';
import 'package:flutter_clean_archi_bloc/injection_container.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late UserBloc userBloc;
  late TextEditingController email;
  late TextEditingController password;
  final _formKey = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    userBloc = sl<UserBloc>();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    userBloc.close();
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
                'Adresse e-mail :',
                style: TextStyle(
                  color: Colors.white,
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
                    )),
                controller: email,
              ),
              const SizedBox(height: 15),
              const Text(
                'Mot de passe :',
                style: TextStyle(
                  color: Colors.white,
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
                    backgroundColor: Color.fromRGBO(50, 100, 176, 1),
                  ),
                  onPressed: () {
                    userBloc.add(
                      LoginEvent(
                        email: email.text,
                        password: password.text,
                      ),
                    );
                  },
                  child: const Text(
                    'Connexion',
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
