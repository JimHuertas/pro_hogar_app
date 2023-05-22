import 'package:flutter/material.dart';

import '../../widgets/custom_buttom.dart';

class ButtonHero extends StatelessWidget {
  const ButtonHero({super.key});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'my_button',
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 2000),
        tween: Tween<Offset>(
          begin: const Offset(0, 0),
          end: const Offset(0, 0),
        ),
        builder: (context, offset, child) {
          return CustomButtom(
              backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
              colorText: Colors.white,
              text: 'Ingresar',
              onPressed: (){
                Navigator.pushReplacementNamed(context, 'home');
            });
        },
      ),
    );
  }
}