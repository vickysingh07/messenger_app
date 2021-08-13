import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messenger'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text("Sign In with Google"),
        ),
      ),
    );
  }
}
