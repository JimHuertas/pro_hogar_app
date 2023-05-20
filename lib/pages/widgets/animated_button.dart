import 'package:flutter/material.dart';
import 'package:pro_hogar_app/pages/widgets/custom_buttom.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    Key? key,
    required this.onPressed,
    required this.heroTag,
    required this.color,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String heroTag;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: CustomButtom(
        text: 'Siguiente',
        onPressed: (){}
      )
    );
  }
}