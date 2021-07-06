import 'package:flutter/cupertino.dart';
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
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: travelPlace.id,
                    child: Image.network(travelPlace.image),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          travelPlace.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Icon(CupertinoIcons.heart_fill, color: Colors.pink),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Wrap(
                        spacing: 6,
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.amber,
                                )),
                          ),
                          Text(travelPlace.rating, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('2.4k reviews', style: TextStyle(color: Colors.grey[600]),),
                        ],
                      ),
                      Wrap(
                        spacing: 6,
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.pinkAccent,
                                )),
                          ),
                          Text(travelPlace.length+' km', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('Distance', style: TextStyle(color: Colors.grey[600]),),
                        ],
                      ),
                      Wrap(
                        spacing: 6,
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  CupertinoIcons.cloud_sun_fill,
                                  color: Colors.blue,
                                )),
                          ),
                          Text(travelPlace.weather+'°C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('Sunny', style: TextStyle(color: Colors.grey[600]),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Text(
                      travelPlace.longDesc,
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.4,
                      ),
                    ),
                  ),
                  SizedBox(height: 62),
                ],
              ),
            ),
            // back button
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextButton(
                  onPressed: (){},
                  child: Text('BOOK NOW', style: TextStyle(color: Colors.white, fontSize: 18)),
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(17, 12, 17, 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
