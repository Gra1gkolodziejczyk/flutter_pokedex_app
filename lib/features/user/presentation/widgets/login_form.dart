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
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    userBloc.add(
                      LoginEvent(
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
      ),
    );
  }
}
