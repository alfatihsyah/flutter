import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //nyacak lo cak iki!!
        },
        child: Icon (Icons.shopping_basket_rounded), 
        backgroundColor: Color.fromARGB(255, 255, 186, 83),
        ),
    );
  }
}
