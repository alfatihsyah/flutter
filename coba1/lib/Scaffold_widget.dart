//import 'package:coba1/button.dart';
import 'package:coba1/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dialog.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ANJAY CODING GUA JALAN KAWAN'),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.home),
        // ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          Text(""),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 237, 118, 118),
        foregroundColor: Color.fromRGBO(55, 53, 53, 1),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'sabar ya kak',
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          DialogWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 153, 51, 51),
        unselectedItemColor: Color.fromARGB(255, 248, 49, 49),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'profil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_sharp),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: " contoh",
          )
        ],
        //  backgroundColor: Color.fromARGB(11, 0, 0, 0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'tambah satu',
        child: Icon(Icons.notification_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
    