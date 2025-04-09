import 'package:flutter/material.dart';
import 'package:openchat/components/my_button.dart';
import 'package:openchat/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  // Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Logo
              Icon(
                Icons.message,
                size: 80,
                color: Colors.grey[800],
              ),

              const SizedBox(height: 50),

              // Mensagem
              const Text(
                "Bem-vindo(a) ao OpenChat!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              
              const SizedBox(height: 25),

              // Email
              MyTextField(
                controller: emailController, 
                hintText: 'Email', 
                obscureText: false,
              ),

              const SizedBox(height: 10),
          
              // Senha
              MyTextField(
                controller: passwordController, 
                hintText: 'Senha', 
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // Botão
              MyButton(onTap: () {}, text: "Entrar")
            ],
          ),
        ),
      ),
    );
  }
}