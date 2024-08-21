import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/Gus baha739.png'),
    );
  }
}