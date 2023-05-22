import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String titulo;

  const Logo({
    Key? key,
    required this.titulo  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: Column(
          children: const <Widget>[
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: 20),
            // Text(titulo, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
