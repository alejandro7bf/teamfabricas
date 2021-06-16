import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamfabricas/Widgets/Fabrica/ActionForm.dart';
import 'package:teamfabricas/Widgets/Fabrica/FabricaForm.dart';
import 'package:teamfabricas/Widgets/Fabrica/FabricaTextField.dart';
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
                Row(
                  children: [
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            elevation: 3, primary: Colors.blueAccent),
                        onPressed: () {
                          _showDialog(context);
                        },
                        icon: Icon(Icons.add),
                        label: Text('Crear Fábrica'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 3,
        scrollable: true,

        title: Text("Crear una fábrica"),
        content: FormFabrica(),
      );
    },
  );
}

