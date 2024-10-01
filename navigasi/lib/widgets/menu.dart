import 'package:flutter/material.dart';
import 'package:navigasi/views/profileview.dart';

class menuBottomState extends StatefulWidget {
    int activePage ; 
  menuBottomState(this.activePage);

  @override
  State<menuBottomState> createState() => _menuBottomStateState();
}

class _menuBottomStateState extends State<menuBottomState> {

  void getlink(index) {
  
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Profileview(nama: 'mamat', alamat: 'suko', juara: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.activePage,
      onTap: getlink,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "omah"),
        BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt_outlined), label: "bahan bakar"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "mekanik"),
      ],
    );
  }
}
