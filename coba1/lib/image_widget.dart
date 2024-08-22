import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/fateh.jpg'),
    );
  }
}