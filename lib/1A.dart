import 'package:flutter/material.dart';

//suggest : ctrl + spasi

// import 'package:flutter/cupertino.dart';

void main(){
  // runApp(Container(child: Text("halo", textDirection: TextDirection.ltr,),));
  runApp(Aplikasiku());
  // runApp((CupertinoApp(
  //   home: CupertinoPageScaffold(child: Container()),
  // )));
}

class Aplikasiku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasiku"),
        ),
        body: Text("Selamat datang"),
      ),
    );
  }
}