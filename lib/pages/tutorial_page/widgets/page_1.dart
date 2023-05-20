import 'package:flutter/material.dart';

import '../../widgets/custom_buttom.dart';
import '../../widgets/label.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(73, 113, 116, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _textTutorial(widthScreen, heightScreen),
            Image.asset(
              'assets/img_page_1.png',
              scale: 0.9,
              width: 530
            ),
            const SizedBox(height: 2),
            const Labels(
              route: 'home',
              text: '',
              textLinked: 'Saltar',
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  _textTutorial(double width, double height){
    String _textTutorial = 'ProHogar es un intermediario ' 
        'entre los proveedores de servicios y los usuarios, '
        'permitiendo que los servicios se presten de manera más ' 
        'rápida, eficiente y segura.';
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 65),
        alignment: Alignment.topCenter,
        width: width*80/100,
        height: height*32/100,
        child: Text(
          _textTutorial,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.white
          ),
        ),

      ),
    );
  }
}