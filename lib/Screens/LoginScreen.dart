import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teamfabricas/Widgets/LogoWidget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/login.jpeg"), fit: BoxFit.cover),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "La mejor plataforma B2B, encuentra tus proveedores aquí",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.white,
                          child: Image.asset('assets/google.png')))
                ],
              )),
        ],
      )),
    );
  }
}
