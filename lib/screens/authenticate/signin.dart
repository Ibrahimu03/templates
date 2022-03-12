import 'package:flutter/material.dart';
import 'package:trial/screens/authenticate/emailAndPassword.dart';
import 'package:trial/service/auth.dart';
import 'package:trial/service/auth2.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final authActivity _auth = authActivity();
  final emailPassword verify = const emailPassword();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("LOGIN HERE"),
        actions: const [
          Icon(Icons.add_box_outlined),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
        child: RaisedButton(
          child: const Text("LOGIN"),

          onPressed: () async{
            dynamic result = await _auth.SignInAnonymously();
            if (result == null){
              print("Failed to login anon");
            }else{
              print(result.uid);
            }
            _auth.StateChange();
          },
        ),
      ),
    );
  }
}
