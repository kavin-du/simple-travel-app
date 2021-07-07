import 'package:flutter/cupertino.dart';
import 'package:madhack_workshop2/models/travel_place.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TravelDataProvider with ChangeNotifier {
  List<TravelPlace> travelList = [];

  loadPlaces() async {
    return await FirebaseFirestore.instance
        .collection('travel-places')
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((queryDocSnapshot) {
        if (queryDocSnapshot.exists) {
          travelList.add(TravelPlace.fromJson(
              {"id": queryDocSnapshot.id, ...queryDocSnapshot.data()}));
          notifyListeners();
        }
      });
    });
  }

  // void addItem(TravelPlace travelPlace) {
  //   travelList.add(travelPlace);
  //   notifyListeners();
  // }
}
