import 'package:firebase_auth/firebase_auth.dart';
import 'package:trial/models/userModelClass.dart';

class AuthService {
  FirebaseAuth Auth = FirebaseAuth.instance;

  //creating a user obj based on FirebaseUser
  UserModel? userFromFirebaseUser(User user){
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //listening to auth changes if the user is logged in or out
  Stream<User?> Function() get UserState{
    return Auth.authStateChanges;
  }

  Future SignInAnon() async {
    try{
      UserCredential result = await Auth.signInAnonymously();
      User? user = result.user;
      return userFromFirebaseUser(user!);
    }
    catch(e) {
      print(e.toString());
      return null;
    }
  }
}