

import 'package:flutter/material.dart';
import 'package:teamfabricas/Firebase_services/Firestore.dart';
import 'package:teamfabricas/Models/Fabrica.dart';

import 'FabricaBoxDisplay.dart';

class PrintFabricas extends StatelessWidget {
  const PrintFabricas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthscreen = MediaQuery.of(context).size.width;
    return Flexible(
      child: Container(
        width: widthscreen,
        child: StreamBuilder(
            stream: FirestoreService().getFabricas(),
            builder: (context, AsyncSnapshot<List<Fabrica>> snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center();
              }

              return GridView.count(
                crossAxisCount: 3,
                childAspectRatio: (1.5 / 1),
                children: List.generate(snapshot.data!.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: FabricaBox(fabrica: snapshot.data![index]),
                  );
                }),
              );
            }),
      ),
    );
  }
}
