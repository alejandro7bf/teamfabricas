import 'package:flutter/material.dart';
import 'package:teamfabricas/Screens/LoginScreen.dart';

void main() {
  runApp(TeamFabricasApp());
}

class TeamFabricasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamFabricas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

