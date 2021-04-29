import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int lftnum = 1;
  int ritnum = 1;
  var ordr = 'إضغط لتبديل الصورة';
  var con = '!!!! مبروك نجحت';
  var kjh;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.cyanAccent[100],
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            title: Text('لعبة التطابق'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                kjh = Text(
                  ritnum == lftnum ? con : ordr,
                  style: TextStyle(
                    fontSize: 43.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[900],
                    fontFamily: 'almbon',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              lftnum = Random().nextInt(8) + 1;
                            });
                            ;
                          },
                          child: Image.asset('./images/image-${lftnum}.png'),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              ritnum = Random().nextInt(8) + 1;
                            });
                          },
                          child: Image.asset('./images/image-${ritnum}.png'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
