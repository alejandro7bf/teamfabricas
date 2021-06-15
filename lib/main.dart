import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(
            child: Text(
          'login page',
        )),
      ),
    );
  }
}
