import 'package:coba1/image4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 245, 144),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              height: 200,
              child: Column(
                children: [
                  Image(image: AssetImage('assets/6.jpg'),width: MediaQuery.of(context).size.width ),
                  Row(
                    children: [Text("coba")],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
