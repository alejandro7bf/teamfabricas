

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teamfabricas/Firebase_services/Firestore.dart';

class Fabrica{

  late String id, name, market, description, ceo, photoURL, city, country, telephone, web;
  late DateTime foundationDate, creationDate;
  late String headcount;
  
      Fabrica.fromFirestore(DocumentSnapshot doc){
        if(doc.data() != null){
          this.id = doc.id;
          this.name = doc.get('name');
          this.market = doc.get('market');
          this.description = doc.get('description');
          this.ceo = doc.get('ceo');
          this.photoURL = doc.get('photoURL');
          this.city = doc.get('city');
          this.country = doc.get('country');
          this.telephone = doc.get('telephone');
          this.web = doc.get('web');
          this.foundationDate = doc.get('foundationDate');
          this.creationDate = doc.get('creationDate');
          this.headcount = doc.get('headcount');
        }
      }


     Fabrica();
    
    Fabrica.save(Fabrica fabrica){
      FirestoreService().createFabrica(fabrica);
    }
  

  }


 


