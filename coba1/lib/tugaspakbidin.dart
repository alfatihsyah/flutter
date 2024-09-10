import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tugas1 extends StatelessWidget {
  const tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 60,
        decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage('assets/pertamina.png'),width: 100,),
                // TextField(decoration: InputDecoration(border:OutlineInputBorder()),),
                Icon(Icons.menu)
              ],
            )
          ],
        ),
      ),
    );
  }
}
