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
      color: Colors.purple[50],
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
                  child: Image.network(                    
                    travelPlace.image,
                    height: 220,
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, progress) {
                      return progress != null ? Container(
                        child: CupertinoActivityIndicator(),
                        height: 220,
                        alignment: Alignment.center,
                      ) : child;
                    },
                  ),
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
            title: Hero(
              tag: travelPlace.id+'title',
              child: Text(
                travelPlace.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            subtitle: Text(
              travelPlace.shortDesc,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            trailing:
                Icon(CupertinoIcons.ellipsis_vertical, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
