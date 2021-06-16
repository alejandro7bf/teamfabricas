

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamfabricas/Widgets/General/LogoWidget.dart';
import 'package:teamfabricas/Widgets/General/UserCard.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: UserCard(user!),
        ),
        Flexible(child: Logo()),
      ],
    );
  }
}