import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      'https://i.scdn.co/image/ab67616d0000b273db20089661aff3a8070600ca',
      'https://i.scdn.co/image/ab67616d0000b273b25093d7ccdce4a848988f9e'
    ];
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          urls[0],
          fit: BoxFit.cover,
          loadingBuilder:(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
      ),
    );
  }
}