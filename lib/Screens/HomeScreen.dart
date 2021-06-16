import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamfabricas/Widgets/Fabrica/Display/FabricaList.dart';
import 'package:teamfabricas/Widgets/General/Menu.dart';
import 'package:teamfabricas/Widgets/General/NavigationBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<User?>();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                NavigationBar(user: user),
                Divider(),
                MenuHome(),
                PrintFabricas(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

