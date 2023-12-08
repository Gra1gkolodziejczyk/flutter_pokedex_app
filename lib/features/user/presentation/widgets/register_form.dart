import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_state.dart';
import 'package:flutter_clean_archi_bloc/injection_container.dart';

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
            children: [
              MaterialButton(
                onPressed: () {
                  userBloc.add(
                    RegisterEvent(
                      username: username.text,
                      email: email.text,
                      password: password.text,
                    ),
                  );
                },
                child: const Text('Connexion'),
              ),
            ],
          ),
        );
      },
    );
  }
}
