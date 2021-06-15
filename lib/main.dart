import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teamfabricas/Screens/LoginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

/*Initialize Firebae Core is mandatory now*/
class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return TeamFabricasApp();
        }
        return Center();
      },
    );
  }
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

