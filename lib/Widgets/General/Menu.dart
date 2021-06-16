


import 'package:flutter/material.dart';
import 'package:teamfabricas/Widgets/Fabrica/FabricaForm.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
