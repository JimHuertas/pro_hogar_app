// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_hogar_app/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            // statusBarColor: Colors.black, // <-- SEE HERE
            statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness: Brightness.dark, //<-- For iOS SEE HERE (dark icons)
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: appRoutes,
      initialRoute: 'tutorial',
    );
  }
}