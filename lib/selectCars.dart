import 'package:flutter/material.dart';

class SelectCars extends StatelessWidget {
  const SelectCars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Cars!',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: (){
                  Navigator.pushNamed(context, '/home');
              },
              child:const Text('HOME'),
            ),

          ]
        )


      ),
    );
  }
}
