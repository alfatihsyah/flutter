import 'package:flutter/material.dart';

class TransaksiView extends StatelessWidget {
  const TransaksiView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Column(
      children: [
        Text("ID : ${args['id']}"),
        Text("Nama Produk : ${args['product']}"),
        Text("Harga : ${args['price']}"),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        )
      ],
    );
  }
}
