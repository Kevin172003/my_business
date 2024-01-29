import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedProfileView extends StatelessWidget {
  LoggedProfileView({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('${user?.email}')),
        ],
      ),
    );
  }
}
