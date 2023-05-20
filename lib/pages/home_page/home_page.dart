import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../widgets/custom_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Hero(
          tag: 'myButton',
          child: 
          CustomButtom(
              backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
              colorText: Colors.white,
              text: 'Siguiente',
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              }
            )
          ),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Hero(
          tag: 'myButton',
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 500),
            tween: Tween<Offset>(
              begin: Offset(0, 0),
              end: Offset(0, 0),
            ),
            builder: (context, offset, child) {
              return Transform.translate(
                offset: offset * 80,
                child: CustomButtom(
                  backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
                  colorText: Colors.white,
                  text: 'Siguiente',
                  onPressed: (){
                    Navigator.pop(context);
                  }
                )
              );
            },
          ),
        ),
      ),
    );
  }
}