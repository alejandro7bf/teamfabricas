

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamfabricas/Screens/HomeScreen.dart';
import 'package:teamfabricas/Screens/LoginScreen.dart';
import 'package:provider/provider.dart';

class Authentication extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final  user = context.watch<User?>();
    return user?.uid != null? ( user!.uid.isNotEmpty ? Home(): Login()) :Login();
  }

}