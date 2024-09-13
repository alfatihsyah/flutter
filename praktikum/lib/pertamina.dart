import 'package:flutter/Material.dart';

class copas extends StatelessWidget {
  const copas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyPertamina'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcomeSection(),
              SizedBox(height: 20),
              _buildInformationCard(),
              SizedBox(height: 20),
              _buildNearbyStationCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return Text(
      'Selamat datang, alfatihsyah',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildInformationCard() {
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInfoRow('BBM yang telah diisi', '0 Liter BBM 30 hari terakhir'),
            Divider(),
            _buildPaymentMethod(),
            Divider(),
            _buildPoints(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildPaymentMethod() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.credit_card, color: Colors.blue),
      title: Text(
        'Metode Pembayaran',
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text(
        'Hubungkan',
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }

  Widget _buildPoints() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.star, color: Colors.orange),
      title: Text(
        'Poin Anda',
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text(
        '0',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildNearbyStationCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SPBU terdekat dari lokasi Anda',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '54.651.69',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.navigation, color: Colors.blue),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'SPBU 54.651.69, Jl. Raya Dirgantara, Kodya Malang',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}