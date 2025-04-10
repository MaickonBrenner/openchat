import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:openchat/pages/home_page.dart';
import 'package:openchat/pages/login_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          // Usuário está logged
          if (snapshot.hasData) {
            return const HomePage();
          } else {
          // Usuário não está logged
            return const LoginPage();
          }
          
        }
        
        ),
    );
  }
}