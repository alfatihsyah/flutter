import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

class Image1 extends StatelessWidget {
  const Image1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/3.jpg'),
      height: 200,width: 300,
    );
    
  }
}