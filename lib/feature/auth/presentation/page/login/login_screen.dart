import 'package:flutter/material.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/page/register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pokemonBg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/pokemon.png',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Te revoila jeune dresseur ...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
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
                          validator: (value) => null,
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
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(50, 100, 176, 1),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Se Connecter',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 204, 1, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Vous n'avez pas de compte ? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 204, 1, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
