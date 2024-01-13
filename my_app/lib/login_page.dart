import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Adicione a lógica necessária aqui
                  emailController.text = text;
                },
              ),
              const SizedBox(height: 10),
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Adicione a lógica necessária aqui
                  senhaController.text = text;
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _entrar,
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _entrar() {
    String email = emailController.text;
    String senha = senhaController.text;
    if (email == 'leo' && senha == '123') {
      print('correto');
    }
    // Adicione a lógica para autenticação ou processamento dos dados de login
    print('Email: $email, Senha: $senha');
  }
}
