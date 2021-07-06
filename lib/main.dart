import 'package:flutter/material.dart';
import 'package:madhack_workshop2/providers/travel_data_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    child: MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
    providers: [
      ChangeNotifierProvider<TravelDataProvider>(
          create: (_) => TravelDataProvider()),
    ],
  ));
}
