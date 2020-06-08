import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webpage/Login/LoggedIn/loggedin.dart';
import 'package:flutter_webpage/Login/loginmain.dart';

class AuthService {
  //Handle Authentication
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return LoggedIn();
        } else {
          return LoginApp();
        }
      },
    );
  }

  //SignOut
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
