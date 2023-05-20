import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String route;
  
  final String text;
  final bool textReference;
  final Color colorText;

  final String textLinked;
  final Color colorLinkedText;


  const Labels({
    Key? key, 
    required this.route,
    this.text = 'no-text',
    this.textReference = false,
    this.colorLinkedText = Colors.black,
    this.colorText = Colors.black,
    required this.textLinked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        (textReference) ?
          Text(text, 
            style: TextStyle(
              color: colorText,
              fontSize: 15, 
              fontWeight: FontWeight.w300)
          )
          : Container(),
        // const SizedBox(height: 10),
        GestureDetector(
          child: Text(textLinked, 
            style: TextStyle(
              color: colorLinkedText,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          onTap: (){
            Navigator.pushReplacementNamed(context, route);
          },
        )
      ],
    );
  }
}