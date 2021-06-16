import 'package:flutter/material.dart';
import 'package:teamfabricas/Widgets/Fabrica/Create/FabricaForm.dart';

// ignore: must_be_immutable
class MenuHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  elevation: 3, primary: Colors.grey[800]),
              onPressed: () {
                _showDialog(context);
              },
              icon: Icon(Icons.add),
              label: Text('Crear Fábrica')),
        ),
        IconButton(onPressed: (){
          
        }, icon: Icon(Icons.sort))
        
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
