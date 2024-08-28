import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

class Image4 extends StatelessWidget {
  const Image4({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/4.jpg'),
      height: 300,width: 300,
    );
    
  }
}