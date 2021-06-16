import 'package:flutter/material.dart';
import 'package:teamfabricas/Models/Fabrica.dart';

class FabricaBox extends StatelessWidget {
  final Fabrica fabrica;
  FabricaBox({required this.fabrica});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        child: Column(
          children: [
            Flexible(
              child: ListTile(
                title: Text(fabrica.name),
                subtitle: Text(fabrica.market),
                trailing: Icon(Icons.favorite_border_outlined),
              ),
            ),
            Flexible(
              flex: 2,
              child: AspectRatio(
                child: Image.network(fabrica.photoURL, fit: BoxFit.cover),
                aspectRatio: 3 / 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(fabrica.city + ", " + fabrica.country),
            )
          ],
        ),
      ),
    );
  }
}
