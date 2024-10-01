import 'package:flutter/material.dart';
import 'package:navigasi/widgets/menu.dart';

class Profileview extends StatelessWidget {
  String nama;
  String? alamat;
  int juara;
  Profileview({super.key, required this.nama,   this.alamat, required this.juara});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('aseekkk'),
          Text(nama),
          Text(alamat!),
          Text('${juara}')
        ],
      ),
      bottomNavigationBar: menuBottomState(2                  ),
    );
  }
}
