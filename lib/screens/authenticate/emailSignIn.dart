import 'dart:html';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class emailSignIn extends StatefulWidget {
  const emailSignIn({Key? key}) : super(key: key);

  @override
  _emailSignInState createState() => _emailSignInState();
}

class _emailSignInState extends State<emailSignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future EmailSignInMethod() async{
    User user = await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text) as User;
    if (user != null){
      print("user logged in");
    }else{
      print("user not found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child:Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),

          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),

          RaisedButton(
            color: Colors.blue,
            child: Text("submit"),
              onPressed: (){
            EmailSignInMethod();
          })
        ],
      ),)
    );
  }
}
