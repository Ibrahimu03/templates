import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class emailPassword extends StatefulWidget {
  const emailPassword({Key? key}) : super(key: key);

  @override
  _emailPasswordState createState() => _emailPasswordState();
}

class _emailPasswordState extends State<emailPassword> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool success;
  late String UserEmail;

  Future EmailPasswordFunction() async{
    FirebaseAuth auth = FirebaseAuth.instance;

    User credential = await auth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text) as User;
  }

  @override
  Widget build(BuildContext context) {
    var _formkey;
    return Scaffold(
      body: Form(
        key: _formkey,
          child: Column(
            children: [
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              validator: (dynamic value){
                if(value.isEmpty){
                  return 'Please Enter Email';
                }
                },
            ),
            TextFormField(
                controller: password,
                decoration: const InputDecoration(
                     labelText: 'Password',
                ),
                validator: (dynamic value){
                  if(value.isEmpty){
                    return 'Enter Password';
                    }
                      return null;
                  }

            ),
            Container(
              child: RaisedButton(
                child: Text("Register"),
                onPressed: (){
                  EmailPasswordFunction();
                },
              ),
            )
          ],
      )),
    );
  }
}

