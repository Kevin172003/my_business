// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Search_Bar extends StatefulWidget {
  const Search_Bar({super.key});

  @override
  _Search_BarState createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              icon: const Icon(Icons.person),
              onPressed: () {
                // Profile button click logic here
              },
            ),
          ),
        ),
      ],
    );
  }
}
