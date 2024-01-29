import 'package:flutter/material.dart';
import 'package:my_business/screens/home_screen/home_page.dart';
import 'package:my_business/screens/login_page.dart';

class BottomnavBar extends StatefulWidget {
  @override
  _BottomnavBarState createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MyHomePage(),
    const Text('search screen'),
    const Text('Favourite Screen'),
    const Text('Profile page')
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue[700],
      unselectedItemColor: Colors.blue[100],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
