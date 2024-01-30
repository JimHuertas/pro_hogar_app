import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            const SizedBox(height: 25),
            Image.asset(
              'assets/img_page_2.png',
              width: 530
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }

  _textTutorial(double width, double height){
    String _textTutorial = 'Garantizamos la calidad y seguridad en ' 
      'los servicios ofrecidos al contar con un riguroso proceso de ' 
      'selección y verificación de los proveedores de servicios.';
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

// Hero(
//               tag: 'next_button',
//               child:  TweenAnimationBuilder(
//                 duration: const Duration(milliseconds: 300),
//                 tween: Tween<Offset>(
//                   begin: const Offset(0, 0),
//                   end: const Offset(0, 0),
//                 ), builder: (BuildContext context, Offset offset, Widget? child) { 
//                   return Transform.translate(
//                     offset: offset * 80,
//                     child: CustomButtom(
//                       backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
//                       colorText: Colors.white,
//                       text: 'Siguiente',
//                       onPressed: (){
//                         pageController.animateToPage(
//                           0,
//                           duration: const Duration(milliseconds: 300), 
//                           curve: Curves.linear
//                         );
//                       }
//                     )
//                   );
//                },
//               ),
//             ),