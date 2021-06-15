import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamfabricas/Screens/HomeScreen.dart';
import 'package:teamfabricas/Screens/LoginScreen.dart';
import 'package:teamfabricas/Firebase_services/auth.dart';

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
    return MultiProvider(
      providers: [
        StreamProvider<User?>(create: (context)=> Auth().authstate,initialData: null,),

      ],
      child: MaterialApp(
        title: 'TeamFabricas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Authentication(),
      ),
    );
  }
}


class Authentication extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final  user = context.watch<User?>();
    return user?.uid != null? ( user!.uid.isNotEmpty ? Home(): Login()) :Login();
  }

}