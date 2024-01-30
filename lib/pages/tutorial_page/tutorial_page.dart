import 'package:flutter/material.dart';
import 'package:pro_hogar_app/pages/login_page/login_page.dart';
import 'package:pro_hogar_app/pages/tutorial_page/widgets/page_1.dart';
import 'package:pro_hogar_app/pages/tutorial_page/widgets/page_2.dart';

import '../../routes/routes.dart';
import '../widgets/custom_buttom.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    
    double widthScreen = MediaQuery.of(context).size.width/2-95;
    double heightScreen = MediaQuery.of(context).size.height*70/100;
    print(widthScreen);
    return SafeArea(
      bottom: false,
      top: true,
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Page1(),
                Page2(),
              ],
            ),
            Positioned(
              top: heightScreen,
              left: widthScreen,
              child: Hero(
                tag: 'my_button',
                child: CustomButtom(
                    backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
                    colorText: Colors.white,
                    text: 'Siguiente',
                    onPressed: (){
                      (_pageController.page == 0.0)
                        ? _pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut
                          )
                        : Navigator.push(
                          context, 
                          FadeRoute(widget: LoginPage()));
                    }
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}