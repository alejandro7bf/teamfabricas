import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamfabricas/Firebase_services/auth.dart';
import 'package:teamfabricas/Widgets/LogoWidget.dart';
import 'package:provider/provider.dart';
import 'package:teamfabricas/Widgets/UserCard.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: UserCard(user!),
                    ),
                    Flexible(child: Logo()),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

