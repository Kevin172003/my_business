import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_business/screens/signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signin() async {
    final _auth = FirebaseAuth.instance;
    var user = _auth.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    debugPrint('$user');
  }

  create_account() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Enter your E-mail',
              hintStyle: TextStyle(color: Colors.blueGrey),
              hintMaxLines: 1,
            ),
            maxLength: 50,
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: 'Enter your Password',
              hintStyle: TextStyle(color: Colors.blueGrey),
              hintMaxLines: 1,
            ),
            maxLength: 20,
            obscureText: true,
          ),
          ElevatedButton(
              onPressed: () {
                return signin();
              },
              child: const Text('Sign in')),
          ElevatedButton(
              onPressed: () {
                create_account();
              },
              child: const Text('create new Account.'))
        ],
      ),
    );
  }
}
