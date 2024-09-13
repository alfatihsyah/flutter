import 'package:flutter/material.dart';
import 'package:navigasi/views/loginview.dart';
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
      initialRoute: '/login',
      routes: {
        '/login': (_) => Loginview(),
        //'/profil' : (_) => Profileview(),
        '/transaksi' : (_) => TransaksiView(),
      },
    );
  }
}
