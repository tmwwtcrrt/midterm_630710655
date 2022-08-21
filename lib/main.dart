import 'package:flutter/material.dart';
import 'package:midterm_630710655/pages/converter_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exa',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: TempPage(),
    );
  }
}
