import 'package:flutter/material.dart';

void main() => runApp(GeometryCalculatorApp());

class GeometryCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kalkulator',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Mengikuti pengaturan sistem
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
                double length = double.tryParse(lengthController.text) ?? 0;
                double width = double.tryParse(widthController.text) ?? 0;
                double height = double.tryParse(heightController.text) ?? 0;

                if (length > 0 && width > 0 && height > 0) {
                  double volume = length * width * height;
                  double surfaceArea = 2 *
                      ((length * width) + (length * height) + (width * height));

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('hasil perhitungan'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('volume: $volume'),
                          Text('luas permukaan: $surfaceArea'),
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
