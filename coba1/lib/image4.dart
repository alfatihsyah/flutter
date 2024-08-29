import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

class Image4 extends StatelessWidget {
  const Image4({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/6.jpg'),
      height: 200,width: 300,
    );
    
  }
}