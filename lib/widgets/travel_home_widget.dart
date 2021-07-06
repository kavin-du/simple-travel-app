import 'package:flutter/cupertino.dart';
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 5,
      child: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: travelPlace.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(travelPlace.image, fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      CupertinoIcons.bookmark,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            minLeadingWidth: 0,
            leading: Icon(
              CupertinoIcons.placemark_fill,
              color: Colors.red,
            ),
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
