import 'package:flutter/cupertino.dart';

class WidgetFunction extends StatelessWidget {
  String img ;
  String title ;
  WidgetFunction(this.img,this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(img),
            width: 50,
          ),
          Text(
            title, 
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}