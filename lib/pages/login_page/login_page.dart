import 'package:flutter/material.dart';

import '../widgets/custom_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width/2-95;
    double heightScreen = MediaQuery.of(context).size.height*22/100;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.only(bottom: heightScreen),
        alignment: Alignment.bottomCenter,
        child: Hero(
          tag: 'my_button',
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 2000),
            tween: Tween<Offset>(
              begin: const Offset(0, 0),
              end: const Offset(0, -1.3),
            ),
            builder: (context, offset, child) {
              return CustomButtom(
                  backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
                  colorText: Colors.white,
                  text: 'Ingresar',
                  onPressed: (){
                    Navigator.pop(context);
               });
            },
          ),
        ),
      ),
    );
  }
}