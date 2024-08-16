import 'package:flutter/material.dart';

void main()=> runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          children: [
            Image.asset(
              'assets/cute-sasuke.jpg',
            ),
            const SizedBox(
              height: 30.0,
            ),
            // 네모난 박스
            Positioned(
                child:  Container(
                  height: 50.0,
                  padding: const EdgeInsets.fromLTRB(10.0, 4.0, 5.0, 4.0),
                  decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // 입력 필드
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person, color: Colors.purple,),
                            hintText: 'Your Email', hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
            const SizedBox(
              height: 15.0,
            ),
            Positioned(
              child: Container(
                height: 50.0,
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0,4.0),
                decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(25.0)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock, color: Colors.purple),
                            suffixIcon: Icon(Icons.visibility, color: Colors.purple,),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/selectCars'
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                ),
                child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200)),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have as Account?",
                    style:TextStyle(color: Colors.purple)),
                TextButton(
                  onPressed: () {
                    print('TextButton pressed');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple, // 텍스트 색상
                  ),
                  child: const Text('Sign Up'),
                )
              ],
            ),
            const SizedBox(
              height:15.0,
            ),

            const Text(
              'Forget Your Password',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
              ),)

          ],
        ),
      ),
    );
  }
}

