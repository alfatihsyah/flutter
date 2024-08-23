import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  TextEditingController nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: nama,
              obscureText: false,
              onChanged: (a) {
                setState(() {});
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama pengirim'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(nama.text),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama penerima'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'alamat pengirim'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'alamat penerima'),
            ),
          ],
        ),
      ),
    );
  }
}
