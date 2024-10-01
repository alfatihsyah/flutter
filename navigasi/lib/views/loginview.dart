import 'package:flutter/material.dart';
import 'package:navigasi/views/profileview.dart';
import 'package:navigasi/widgets/menu.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("omahe cacak e"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('home'),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushReplacementNamed(context, '/login');
          //   },
          //   child: Text('login'),
          // ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Profileview(nama: 'mamat', alamat: 'suko', juara: 1),
                  ),
                );
              },
              child: Text('profil')
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/transaksi',arguments: {
                  'id' : 1,
                  'product' : "bca",
                  'price' : 0,
                }
                );
              }, child: Text('menu')),
        ],
      ),
      bottomNavigationBar: menuBottomState(0),
    );
  }
}
