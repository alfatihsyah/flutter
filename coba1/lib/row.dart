import 'package:coba1/image.dart';
import 'package:coba1/image4.dart';
import 'package:coba1/image_widget.dart';
import 'package:flutter/cupertino.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Toko Online"),
        SingleChildScrollView(scrollDirection: Axis.horizontal,),
        Row(
          children: [
            Column(
              children: [ImageWidget(), Text("cowok")],
            ),
            Column(
              children: [Image1(), Text("musso")],
            ), 
             Column(
              children: [Image4(), Text("Innova")],
            ), 
            Column(
              children: [ImageWidget(), Text("cowok")],
            ),
            Column(
              children: [Image1(), Text("musso")],
            ), 
             Column(
              children: [Image4(), Text("Innova")],
            ),Column(
              children: [ImageWidget(), Text("cowok")],
            ),
            Column(
              children: [Image1(), Text("musso")],
            ), 
             Column(
              children: [Image4(), Text("Innova")],
            ),         
          ],
        )
      ],
    ));
  }
}
