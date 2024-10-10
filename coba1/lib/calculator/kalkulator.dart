import 'package:flutter/material.dart';

void main() => runApp(GeometryCalculatorApp());

class GeometryCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kalkulator',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, 
      home: GeometryCalculatorPage(),
    );
  }
}

class GeometryCalculatorPage extends StatelessWidget {
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kalkulator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: lengthController,
              decoration:  InputDecoration(labelText: 'panjang'),             
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: widthController,
              decoration: InputDecoration(labelText: 'lebar'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'tinggi'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Tombol untuk menghitung
            ElevatedButton(
              onPressed: () {
                double panjang = double.tryParse(lengthController.text) ?? 0;
                double lebar = double.tryParse(widthController.text) ?? 0;
                double tinggi = double.tryParse(heightController.text) ?? 0;

                if (panjang > 0 && lebar > 0 && tinggi > 0) {
                  double volume = panjang * lebar * tinggi;
                  double luasPermukaan = 2 *
                      ((panjang * lebar) + (panjang * tinggi) + (lebar * tinggi));

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('hasil perhitungan'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('volume: $volume'),
                          Text('luas permukaan: $luasPermukaan'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('EROR', style: TextStyle(color: Colors.red),),
                      content: Text('masukkan nilai yang valid (angka positif).'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('hitung'),
            ),
          ],
        ),
      ),
    );
  }
}
