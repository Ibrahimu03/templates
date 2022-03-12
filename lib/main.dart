import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/service/auth.dart';
//initializing firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:trial/screens/wrapper.dart';


void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(trialApp());
}

class trialApp extends StatefulWidget {
  const trialApp({Key? key}) : super(key: key);

  @override
  _trialAppState createState() => _trialAppState();
}

class _trialAppState extends State<trialApp> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue
        ),
        debugShowCheckedModeBanner: false,
        home: wrapper(key: scaffoldkey),
      );

  }
}
