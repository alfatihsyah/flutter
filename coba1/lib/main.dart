import 'package:coba1/Scaffold_widget.dart';
import 'package:coba1/Scaffold_widget.dart';
import 'package:coba1/button.dart';
import 'package:coba1/dialog.dart';
import 'package:flutter/Material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScaffoldWidget());
  }
}
