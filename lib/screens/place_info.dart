import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:madhack_workshop2/models/travel_place.dart';

class PlaceInfo extends StatelessWidget {
  final TravelPlace travelPlace;

  const PlaceInfo({Key? key, required this.travelPlace}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    timeDilation = 3; // for hero widget
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Hero(
                  tag: travelPlace.id,
                  child: Image.network(travelPlace.image),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  travelPlace.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  travelPlace.longDesc,
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
