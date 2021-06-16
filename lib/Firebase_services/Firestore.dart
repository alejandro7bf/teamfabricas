

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teamfabricas/Models/Fabrica.dart';

class FirestoreService{

  var db = FirebaseFirestore.instance;


  Future<void> createFabrica(Fabrica fabrica) async {
    var data ={
      "name" : fabrica.name,
      "market": fabrica.market,
      //"description": fabrica.description ,
      "ceo": fabrica.ceo,
      "photoURL": "https://picsum.photos/200/300",
      "city": fabrica.city,
      "country": fabrica.country,
      "telephone": fabrica.telephone,
      "web" : fabrica.web,
      //"foundationDate": fabrica.foundationDate ,
      "noemployees": fabrica.headcount,
      "creationDate": FieldValue.serverTimestamp(),

    };

    db.collection('Fabrica').add(data);
  }

}