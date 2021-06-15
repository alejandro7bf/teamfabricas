

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamfabricas/Firebase_services/auth.dart';

class UserCard extends StatelessWidget {
  User user;
  UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          title: Text(
            'Bienvenido, ' + user.displayName.toString(),
            style: TextStyle(color: Colors.grey[700]),
          ),
          subtitle: InkWell(
            child: Text('Salir',
                style: TextStyle(
                    fontSize: 15, decoration: TextDecoration.underline)),
                    onTap: (){
                      Auth().signOut();
                    },
          ),
        ),
      ),
    );
  }
}
