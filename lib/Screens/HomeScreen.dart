import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamfabricas/Firebase_services/Firestore.dart';
import 'package:teamfabricas/Models/Fabrica.dart';
import 'package:teamfabricas/Widgets/Fabrica/ActionForm.dart';
import 'package:teamfabricas/Widgets/Fabrica/FabricaForm.dart';
import 'package:teamfabricas/Widgets/Fabrica/FabricaTextField.dart';
import 'package:teamfabricas/Widgets/General/Menu.dart';
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
                MenuHome(),
                PrintFabricas(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
                children: List.generate(snapshot.data!.length, (index) {
                  return FabricaBox(fabrica: snapshot.data![index]);
                }),
              );
            }),
      ),
    );
  }
}

class FabricaBox extends StatelessWidget {
  final Fabrica fabrica;
  FabricaBox({required this.fabrica});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(fabrica.photoURL),
          ),
          Text(fabrica.name),
          Text(fabrica.ceo),
        ],
      ),
    );
  }
}
