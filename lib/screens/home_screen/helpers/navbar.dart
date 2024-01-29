import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Kevin',
            ),
            accountEmail: Text('${user?.email}'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            currentAccountPictureSize: const Size.fromRadius(35),
          ),
        ],
      ),
    );
  }
}
