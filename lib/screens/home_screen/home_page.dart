import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_business/screens/home_screen/helpers/bottomnavitem.dart';
import 'package:my_business/screens/home_screen/helpers/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;

  final user = FirebaseAuth.instance.currentUser;

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: isExpanded
            ? const TextField(
                decoration: InputDecoration(hintText: 'Search here.'),
              )
            : null,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Add button click logic here
                },
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () {
                  // Profile button click logic here
                },
              ),
            ),
          ),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   actions: [
      //     Center(
      //       child: Container(
      //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      //         child: SearchBarScreen(),
      //       ),
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Text('${user?.email}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: void_checks
          return signout();
        },
        child: const Icon(Icons.login_rounded),
      ),
      drawer: NavBar(),

      //bottomNavigationBar: const BottomNavBar(),
      bottomNavigationBar: BottomnavBar(),
      
    );
  }
}
