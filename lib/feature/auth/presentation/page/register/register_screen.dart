import 'package:flutter/material.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/presentation/page/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  const Column(
                    children: <Widget>[
                      Text(
                        "Inscrit toi pour devenir le meilleure",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "dresseur...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 15),
                        const Text(
                          "Pseudo :",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color.fromRGBO(255, 204, 1, 1),
                            ),
                            hintText: 'Entrer votre pseudo',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Adresse e-mail :",
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
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Mot de passe :",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.security,
                              color: Color.fromRGBO(255, 204, 1, 1),
                            ),
                            hintText: 'Entrer votre mot de passe',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(50, 100, 176, 1),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "S'inscrire",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 204, 1, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Tu as déjà un compte ?",
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
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text(
                            "Se connecter",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 204, 1, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
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
