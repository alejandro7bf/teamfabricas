import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

class FormFabrica extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controllername = TextEditingController();
  TextEditingController _controllersector = TextEditingController();
  TextEditingController _controllerceo = TextEditingController();
  TextEditingController _controllerciudad = TextEditingController();
  TextEditingController _controllerpais = TextEditingController();
  TextEditingController _controllertelefono = TextEditingController();
  TextEditingController _controllerweb = TextEditingController();
  TextEditingController _controllerheadcount = TextEditingController();

  @override
  void dispose() {
    _controllername.dispose();
    _controllersector.dispose();
    _controllerceo.dispose();
    _controllerciudad.dispose();
    _controllerpais.dispose();
    _controllertelefono.dispose();
    _controllerweb.dispose();
    _controllerheadcount.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FabricaTextField(
              controllername: _controllername, hint: "Nombre de la empresa"),
          FabricaTextField(controllername: _controllersector, hint: "Sector"),
          FabricaTextField(controllername: _controllerceo, hint: "Presidente"),
          FabricaTextField(controllername: _controllerciudad, hint: "Ciudad"),
          FabricaTextField(controllername: _controllerpais, hint: "País"),
          FabricaTextField(controllername: _controllerweb, hint: "Web"),
          FabricaTextField(
              controllername: _controllertelefono, hint: "Teléfono"),
          FabricaTextField(
              controllername: _controllerheadcount, hint: "Número Empleados"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: new Text("Cancelar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text("Crear"),
                onPressed: () {
                  if (_formKey.currentState!.validate() != false) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
