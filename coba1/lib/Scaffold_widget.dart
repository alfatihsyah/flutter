//import 'package:coba1/button.dart';
import 'package:coba1/dialog.dart';
//import 'package:coba1/image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'dialog.dart';

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
        backgroundColor: Color.fromARGB(255, 17, 204, 251),
        foregroundColor: Color.fromRGBO(36, 36, 36, 1),
      ),
      body: Column(
        children: const <Widget>[
          Center(
            child: Text(
              'yah ketemu deh',
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
        selectedItemColor: Color.fromARGB(255, 135, 135, 135),
        unselectedItemColor: Color.fromARGB(255, 30, 28, 28),
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
        // backgroundColor: Color.fromARGB(243, 179, 52, 52),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'tambah satu',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
