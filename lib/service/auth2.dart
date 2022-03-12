import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trial/screens/homepage.dart';

class authActivity {
  FirebaseAuth authenticate = FirebaseAuth.instance;

  //sign in anonymously
  Future SignInAnonymously () async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
      User? user = userCredential.user;
      return user;
    }catch(e){
      print(e.toString());
    }
  }

  Future StateChange() async{
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user){
          if(user == null){
            print("user is currently logged out");
          }else{
            print(user.uid);
          }
    });
  }

}