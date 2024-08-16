import 'package:flutter/material.dart';
import 'package:project2/HomePage.dart';
import 'package:project2/login.dart';
import 'package:project2/selectCars.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/' : (context)=> const Login(),
        '/selectCars' : (context) => const SelectCars(),
        '/home' : (context) => const HomePage()
      },
    );
  }
}


