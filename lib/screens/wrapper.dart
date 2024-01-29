import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_business/screens/home_screen/home_page.dart';
import 'package:my_business/screens/login_page.dart';

class WrapperState extends StatefulWidget {
  const WrapperState({super.key});

  @override
  State<WrapperState> createState() => _WrapperStateState();
}

class _WrapperStateState extends State<WrapperState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const MyHomePage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
