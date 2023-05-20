// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pro_hogar_app/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   fontFamily: (Platform.isAndroid)
      //     ? 'Roboto'
      //     : 'blackCupertino'
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: appRoutes,
      initialRoute: 'tutorial',
    );
  }
}