import 'package:flutter/material.dart';
import './screens/new_event.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TexRapple Prototype',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(24, 51, 51, 1)),
            body2: TextStyle(
              color: Color.fromRGBO(24, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 24,
            )),
      ),
      home: HomeScreen(),
      routes: {
        NewEventScreen.routeName: (ctx) => NewEventScreen(),
      },
    );
  }
}
