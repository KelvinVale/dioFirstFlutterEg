import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Icon(
                Icons.ac_unit_sharp,
                size: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Email:",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("kelvindv3@gmail.com"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Senha:",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("**********"),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black26,
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                child: const Text(
                  "Cadastrar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
