import 'package:flutter/material.dart';
import 'package:pro_hogar_app/pages/login_page/widgets/hero_button.dart';

import '../widgets/label.dart';
import '../widgets/logo.dart';
import 'widgets/custom_imput.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 100),
                const Logo(
                  titulo: 'CutWood',
                ),
                const SizedBox(height: 20),
                _Form(),
                
              ],
            ),
          ),
        ),
      ),
   );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  bool saveAccount = false;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width/2;
    double heightScreen = MediaQuery.of(context).size.height*1/100;
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passwordCtrl= TextEditingController();
    return Container(
      height: MediaQuery.of(context).size.height/2,
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomImput(
            hintText: "Correo",
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          const SizedBox(height: 10),
          CustomImput(
            hintText: "Contraseña",
            textController: passwordCtrl, 
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          _checkVarius(),
          const SizedBox(height: 90),
          const ButtonHero(),
          const SizedBox(height: 40),
          const Labels(
            textReference: true,
            colorLinkedText: Colors.black,
            colorText: Colors.black,
            text: '¿No tienes cuenta?',
            textLinked: 'Registrate',
            route: 'home',
          ),
          SizedBox(height: heightScreen)
        ],
      ),
    );
  }

  _checkVarius(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            activeColor: Colors.black,
            value: saveAccount, 
            onChanged:(isSaved){
              setState(() {saveAccount = isSaved!;});
            },
          ),
        ),
        const Text('Recordar cuenta'),
        SizedBox(width: 25),
        const Text('Olvidé mi contraseña')
      ],
    );
  }
}
