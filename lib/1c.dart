import 'package:flutter/material.dart';

class _TampilWidgetState extends State<TampilWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        // Icon(
        //   Icons.face,
        //   size: 100,
        //   color: Colors.blue,
        // ),

        // Image.network(
        //     "https://eduparx.id/images/logos/eduparx_logo.png",
        //   width: 200,
        // )

        ElevatedButton(
          child: Text("Logout?"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Inixindo App"),
                    content: Text("Apakah Anda Yakin Logout?"),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            print("Cancel");
                          },
                          child: Text("Cancel")),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            print("ok");
                          },
                          child: Text("Ok"))
                    ],
                  );
                });
          },
        ));
  }

}

class TampilWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TampilWidgetState();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
      home: Scaffold(
        body: TampilWidget(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
