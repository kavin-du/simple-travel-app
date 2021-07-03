import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madhack_workshop2/delete/info.dart';
import 'package:madhack_workshop2/screens/place_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// https://www.planetware.com/world/top-places-to-visit-in-the-world-us-az-234.htm
// ! hero anime
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: _height,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Info.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 7.5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => PlaceInfo()));
                  },
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Image.asset(Info.images[index]),
                        ListTile(
                          title: Text(
                            Info.title[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          subtitle: Text(
                            Info.shortDesc[index],
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
