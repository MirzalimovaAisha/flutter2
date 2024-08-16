import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          bottom: TabBar(
            tabs: [
              Text('text1'),
              Text('Text2'),
              Tab(icon: Icon(Icons.cabin), text: 'Text3',)
            ],),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('text1'),
            ),
            Center(
              child: Text('text1'),
            ),
            Center(
              child: Text('text1'),
            )
          ],
        ),
      ),


    );
  }
}
