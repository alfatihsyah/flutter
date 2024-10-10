import 'package:flutter/material.dart';
import 'package:navigasi/views/homeview.dart';
import 'package:navigasi/views/loginview.dart';
import 'package:navigasi/views/movie_view.dart';
import 'package:navigasi/views/profileview.dart';
import 'package:navigasi/views/transaksi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => Loginview(),
        '/': (context) => HomeView(),
        // '/ profil' : (context) => Profileview(nama: nama, juara: juara),
        '/transaksi' : (context) => TransaksiView(),
        '/movie' : (context) => MovieView(),
      },
    );
  }
}
