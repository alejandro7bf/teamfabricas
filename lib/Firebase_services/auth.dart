import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';


class Auth{
  var auth = FirebaseAuth.instance;

  //Auth stream to check the status
  Stream<User?> get authstate => auth.authStateChanges();

  //Sign in with google/firebase
  Future<UserCredential> signInWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    return await auth.signInWithPopup(googleProvider);

    
  }

  Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
}

}

