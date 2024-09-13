import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class tugas1 extends StatelessWidget {
  const tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //title: Text('MyPertamina'),
          leading: (Image(image: AssetImage('assets/pertamina.png'))),
          backgroundColor: const Color.fromARGB(255, 167, 202, 231),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              awal(),
              SizedBox(height: 20),
              fiturUtama(),
              SizedBox(height: 20),
              _buildNearbyStationCard(),
              SizedBox(
                height: 20,
              ),
              MacamBbm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget awal() {
    return Text(
      'Selamat datang',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget fiturUtama() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [FuIsi(), Divider(), FuBayar(), Divider(), FuQr()],
        ),
      ),
    );
  }

  Widget FuIsi() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.add, color: Color.fromARGB(255, 208, 52, 35)),
      title: Text(
        'BBM yang talah diisi',
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text(
        '0 Liter BBM 30 hari terakhir',
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
  // Widget _buildInfoRow(String title, String subtitle) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Text(
  //         title,
  //         style: TextStyle(fontSize: 16),
  //       ),
  //       Text(
  //         subtitle,
  //         style: TextStyle(fontSize: 16, color: Colors.blue),
  //       ),
  //     ],
  //   );
  // }

  Widget FuBayar() {
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

  // Widget _buildPoints() {
  //   return ListTile(
  //     contentPadding: EdgeInsets.zero,
  //     leading: Icon(Icons.star, color: Colors.orange),
  //     title: Text(
  //       'Poin Anda',
  //       style: TextStyle(fontSize: 16),
  //     ),
  //     trailing: Text(
  //       '0',
  //       style: TextStyle(fontSize: 16),
  //     ),
  //   );
  // }

  Widget FuQr() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.qr_code,
        color: Colors.black,
      ),
      title: Text(
        'Tampilkan barqode',
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
                  '00.000.00',
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
              'SPBU 00.000.00, Jl.Ahmat Yani',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget MacamBbm() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('pertamax'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('pertamax'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('pertamax'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 202, 202),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('pertamax'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 202, 202),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('pertamax'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget FiturTambahan() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.grey,
  //       borderRadius: BorderRadius.circular(15),
  //     ),
  //     padding: const EdgeInsets.all(15),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         GridView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 4,
  //               crossAxisSpacing: 10,
  //               mainAxisSpacing: 10,
  //               childAspectRatio: 1),
  //           itemCount: 4,
  //           itemBuilder: (context, index) {
  //             if (index == 3) {
  //               return tampilan(null, "");
  //             }
  //             else
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }
}
