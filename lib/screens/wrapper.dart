import 'package:flutter/material.dart';
import 'package:trial/screens/authenticate/authenticate.dart';
import 'package:trial/screens/authenticate/signin.dart';
import 'package:trial/screens/homepage.dart';

import 'loginPage.dart';

class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //select either home or authenticate
    return const LoginPage();
  }
}
