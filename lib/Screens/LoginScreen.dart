import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teamfabricas/Firebase_services/auth.dart';

import 'package:teamfabricas/Widgets/LogoWidget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login.jpg"), fit: BoxFit.cover),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 30, top: 20),
                  child: Logo(),
                )),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 30, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ingresa para encontrar los mejores proveedores del mercado",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Image.asset(
                        'assets/google.png',
                        height: 80,
                      ),
                      onTap: () {
                        Auth().signInWithGoogle();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
