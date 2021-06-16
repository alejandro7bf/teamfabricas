

import 'package:flutter/material.dart';
import 'package:teamfabricas/Models/Fabrica.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class FabricaBoxDetail extends StatelessWidget {
  Fabrica fabrica;
  FabricaBoxDetail({required this.fabrica});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      child: Column(
        children: [
          Container(height: 200,child: Image.network(fabrica.photoURL, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                fabrica.name,
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text(fabrica.market, style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Column(
            children: [
              Text("Nùmero de empleados:   " + fabrica.headcount),
              SizedBox(height: 10,),
              Text("Nùmero de empleados:   " + fabrica.ceo),
              SizedBox(height: 10,),
              Text("Ubicación:   " + fabrica.city + ", " + fabrica.country),
              SizedBox(height: 10,),
              Text("Teléfono:   " + fabrica.telephone),
              SizedBox(height: 10,),
              InkWell(
                  child: Text(fabrica.web,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    launch("https://"+fabrica.web);
                  }),
            ],
          )
        ],
      ),
    );
  }
}