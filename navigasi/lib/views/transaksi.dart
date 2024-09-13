import 'package:flutter/material.dart';

class TransaksiView extends StatelessWidget {
  const TransaksiView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Column(
      children: [
        Text('id : ' )
      ],
    );
  }
}
