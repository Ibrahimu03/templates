import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //signIn with email and password example                               //put actions on this method
  Future SignInWithMail() async {
    FirebaseAuth auth = FirebaseAuth.instance;

  }

  @override
  Widget build(BuildContext context) {
    Widget buildEmail(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Email", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),

          const SizedBox(height: 10,),

          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [ BoxShadow(
                color: Colors.black45,
                blurRadius: 6,
                offset: Offset(0, 2),
              )]
            ),
            height: 60,
            child: TextFormField(
               keyboardType: TextInputType.emailAddress,
               style: const TextStyle(color: Colors.black87),
               decoration: const InputDecoration(
                 border: InputBorder.none,
                 contentPadding: EdgeInsets.only(top: 14),
                 prefixIcon: Icon(
                     Icons.email,
                     color: Color(0xff5ac18e),
                 ),
                 hintText: 'Email',
                 hintStyle: TextStyle(color: Colors.black38)
               ),
               
           ),
            )

        ],
      );
    }

    Widget buildPassword(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Email", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),

          const SizedBox(height: 10,),
            Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [ BoxShadow(
                  color: Colors.black45,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )]
              ),
            height: 60,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.black87),
              obscureText: true,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black38)
              ),

            ),
            )
        ],
      );
    }
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Container(
             height: double.infinity,
            width: double.infinity,

            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x885ac18e),
                  Color(0x995ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff5ac18e),
                ]
              )
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 120,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),),
                  const SizedBox(height: 50,),
                  buildEmail(),
                  const SizedBox(height: 20,),
                  buildPassword(),
                ],
              ),
            )
          ),
        ),
      )
    );
  }
}

