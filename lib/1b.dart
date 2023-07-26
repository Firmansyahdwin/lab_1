import 'package:flutter/material.dart';
import 'dart:math';

class AngkaAcakState extends State<AngkaAcak>{
  final List<String> data = <String>[];
  final TextStyle font = const TextStyle(fontSize: 18);
  final rng = new Random();

  Widget buatBaris(String i) {
    return ListTile(
      title: Text(
        i,
        style: font,
      ),
    );
  }
  Widget buatList() {
    return ListView.builder(
        itemCount: data.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          return buatBaris(data[i]);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    for(var i =0;i<20;i++){
      data.add(rng.nextInt(99).toString());
    }
    return Center (
      child: buatList(),
    );
  }
}

class AngkaAcak extends StatefulWidget {
  @override
  AngkaAcakState createState() => AngkaAcakState();
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Widget'),
        ),
        body:  Center(
          child: AngkaAcak(),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp());