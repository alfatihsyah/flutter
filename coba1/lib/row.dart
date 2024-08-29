import 'package:coba1/image.dart';
import 'package:coba1/image4.dart';
import 'package:coba1/image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Toko Online"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 118, 118, 118),
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:  Offset(0,3),
                      )
                    ]
                    ),
                    
                child: Column(
                  children: [ImageWidget(), Text("cowok")],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(9),
                child: Column(
                  children: [Image1(), Text("musso")],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(9),
                child: Column(
                  children: [Image4(), Text("turbo")],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
