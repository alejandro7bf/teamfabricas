

import 'dart:async';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teamfabricas/Firebase_services/auth.dart';
import 'package:teamfabricas/Models/Fabrica.dart';


class FirestoreService{

  var db = FirebaseFirestore.instance;


//Create
  Future<void> createFabrica(Fabrica fabrica) async {
    var data ={
      "name" : fabrica.name,
      "market": fabrica.market,
      //"description": fabrica.description ,
      "ceo": fabrica.ceo,
      "photoURL": fabrica.photoURL,
      "city": fabrica.city,
      "country": fabrica.country,
      "telephone": fabrica.telephone,
      "web" : fabrica.web,
      //"foundationDate": fabrica.foundationDate ,
      "headcount": fabrica.headcount,
      "creationDate": FieldValue.serverTimestamp(),
      "CreatedBy_uid" : Auth().auth.currentUser!.uid,
      "CreatedBy_email" : Auth().auth.currentUser!.email,
      "CreatedBy_displayname" : Auth().auth.currentUser!.displayName,
      "CreatedBy_photoURL" : Auth().auth.currentUser!.photoURL,
   
    };

    db.collection('Fabrica').add(data);
  }


  //Read Real time
  Stream<List<Fabrica>> getFabricas (){
     return FirebaseFirestore.instance
      .collection('Fabrica')
      .orderBy('creationDate',descending: true)
      .snapshots()
      .map(toFabricaList);
  }
 

}

 
