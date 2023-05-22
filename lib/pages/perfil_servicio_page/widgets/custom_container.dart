import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final String text;
  const CustomContainer({
    super.key, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Contenedor Superior',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}