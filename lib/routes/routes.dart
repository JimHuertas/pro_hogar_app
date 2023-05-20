import 'package:flutter/material.dart';
import 'package:pro_hogar_app/pages/login_page/login_page.dart';
import 'package:pro_hogar_app/pages/tutorial_page/tutorial_page.dart';

import '../pages/home_page/home_page.dart';


final Map<String, WidgetBuilder> appRoutes = {//const Page1Tutorial(),
  'home' : (_) => const HomePage(),
  'tutorial' : (_) => TutorialPage(),
  'login' : (_) => const LoginPage()
};

class FadeRoute extends PageRouteBuilder {
  final Widget widget;
  FadeRoute({required this.widget})
    : super(
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
      },
      pageBuilder: (
        BuildContext context, 
        Animation<double> animation,
        Animation<double> secondaryAnimation){
          return widget;
      });
}