
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madhack_workshop2/providers/travel_data_provider.dart';
import 'package:madhack_workshop2/screens/place_info.dart';
import 'package:madhack_workshop2/widgets/travel_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// ! change theme font
// ! chande weather, distance, icons

// https://www.planetware.com/world/top-places-to-visit-in-the-world-us-az-234.htm

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<TravelDataProvider>(context, listen: false).loadPlaces();
  }

  @override
  Widget build(BuildContext context) {
    final TravelDataProvider travelDataProvider =
        Provider.of<TravelDataProvider>(context);

    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 18,
        leading: Icon(CupertinoIcons.slider_horizontal_3, color: Colors.black),
        title: Text(
          'Discover Places',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[200],
        toolbarHeight: 60,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('images/avatar.png'),
          ),
          SizedBox(width: 30),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.green[100],
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('images/background_home.jpg'),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          height: _height,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: travelDataProvider.travelList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 7.5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlaceInfo(
                                travelPlace: travelDataProvider
                                    .travelList[index])));
                  },
                  child: TravelTileWidget(
                      travelPlace: travelDataProvider.travelList[index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
