import 'package:flutter/material.dart';

class MyTugas extends StatelessWidget {
  const MyTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row with "BERITA TERBARU" and "PERTANDINGAN HARI INI"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'BERITA TERBARU',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'PERTANDINGAN HARI INI',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Main News Container
            Container(
              color: Colors.purpleAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'zk.jpeg',
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Costa Mendekat Ke Palmeiras',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Transfer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // News List Section
            Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    'zk.jpeg',
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Barcelona Feb 13, 2021'),
                ),
                const Divider(),
                ListTile(
                  leading: Image.asset(
                    'zk.jpeg',
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Barcelona Feb 13, 2021'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
