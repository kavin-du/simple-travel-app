import 'package:flutter/material.dart';
import 'package:madhack_workshop2/models/travel_place.dart';

class TravelTileWidget extends StatelessWidget {
  const TravelTileWidget({
    Key? key,
    required this.travelPlace,
  }) : super(key: key);

  final TravelPlace travelPlace;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Hero(
            tag: travelPlace.id,
            child: Image.network(travelPlace.image),
          ),
          ListTile(
            title: Text(
              travelPlace.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            subtitle: Text(
              travelPlace.shortDesc,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}