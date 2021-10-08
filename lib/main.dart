import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.black,
            child: const Center(
              child: Text(
                "Login Page",
                style: TextStyle(fontSize: 50, color: Colors.lightBlue),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            width: 350,
            child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email Address')),
          ),
          Container(
            height: 100,
            width: 350,
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password')),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              child: const Text("Log In"),
              onPressed: () {
                print("LogIn");
              },
            ),
          )
        ],
      )),
    );
  }
}
