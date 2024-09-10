import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.green),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                height: 250,
                child: Stack(
                  children: [
                    // Center(
                    //   child: Image(
                    //     image: AssetImage("assets/7.png"),
                    //     width: 200,
                    //   ),
                    // ),
                    Positioned(
                      left: 15,
                      bottom: 10,
                      child: Text(
                        "saldo Rp. 10",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 175,
                      right: 20,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage("assets/3.jpg"),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      right: 10,
                      child: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                        itemBuilder: (BuildContext context) {
                          return Constants.choices.map((String choices) {
                            return PopupMenuItem<String>(
                              value: choices,
                              child: Text(choices),
                            );
                          }).toList();
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'transaksi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GridView.count(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 0,
                        padding: EdgeInsets.all(8),
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa,',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pln.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pln',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/tv.png'),
                                  width: 50,
                                ),
                                Text(
                                  'layanan tv',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'transaksi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                    ),
                    Container(
                      height: 200,
                      child: GridView.count(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 0,
                        padding: EdgeInsets.all(8),
                        children: [
                          Container(
                            child: Column(children: [
                               //children: [
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa,',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pln.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pln',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/tv.png'),
                                  width: 50,
                                ),
                                Text(
                                  'layanan tv',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/pulsa.png'),
                                  width: 50,
                                ),
                                Text(
                                  'pulsa',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                            ],),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Constants{
  static const String FirstItem = 'First item';
  static const String SecondtItem = 'second item';
  static const String thirdtItem = 'third item';
  static const List<String> choices = <String>[
    FirstItem,
    SecondtItem,
    thirdtItem
  ];
}
void choiceAction (String choice){
if (choice== Constants.FirstItem){
  print('pertama');
}
else if (choice== Constants.SecondtItem){
  print('kedua');
}
else if(choice== Constants.thirdtItem){
  print('ketiga');
}

}