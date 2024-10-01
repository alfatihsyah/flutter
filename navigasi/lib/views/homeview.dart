import 'package:flutter/material.dart';
import 'package:navigasi/widgets/menu.dart';
//import 'package:navigasi/widgets/menu.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Login')),
            
      ),
    );
  }
}