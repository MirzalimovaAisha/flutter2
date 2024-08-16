import 'package:flutter/material.dart';

void main()=> runApp(const BottomNavigation());

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigation(),
    );
  }
}
