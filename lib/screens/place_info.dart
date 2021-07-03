import 'package:flutter/material.dart';
import 'package:madhack_workshop2/delete/info.dart';

class PlaceInfo extends StatelessWidget {
  const PlaceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(Info.images[0]),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                Info.title[0],
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
                Info.longDesc[0],
                style: TextStyle(
                  fontSize: 17,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
