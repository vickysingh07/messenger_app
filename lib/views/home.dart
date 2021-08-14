import 'package:flutter/material.dart';
import 'package:messenger_app/services/auth.dart';
import 'package:messenger_app/views/signin.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messenger'),
        actions: [
          InkWell(
            onTap: (){
              AuthMethods().signOut().then((s){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn()));
              });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          )
        ],
      ),
    );
  }
}
