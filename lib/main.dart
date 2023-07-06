import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override 
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var a = 0;
  var b = 0;
  var c = 0;

  List colorlist = [
    {
      'appbarcolor': Color(0xff85586F),
      'maincolor': Color(0xff85586F),
      'Number': Color(0xffF8ECD1),
      'Button': Color(0xffF8ECD1)
    },
    {
      'appbarcolor': Colors.pinkAccent,
      'maincolor': Colors.pinkAccent,
      'Number': Colors.purple,
      'Button': Colors.purple
    },
    {
      'appbarcolor': Colors.red,
      'maincolor': Colors.red,
      'Number': Colors.blue,
      'Button': Colors.blue
    },
    {
      'appbarcolor': Colors.red,
      'maincolor': Colors.red,
      'Number': Colors.blue,
      'Button': Colors.blue
    },
    {
      'appbarcolor': Colors.orangeAccent,
      'maincolor': Colors.orangeAccent,
      'Number': Colors.yellowAccent,
      'Button': Colors.yellowAccent
    }
  ];
  int r = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorlist[r]['appbarcolor'],
          centerTitle: true,
          title: Text("Lottery App"),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  r = Random().nextInt(4) + 1;
                });
              },
              child: Icon(
                Icons.color_lens_outlined,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: colorlist[r]['maincolor'],
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorlist[r]['Number']),
                    child: Center(
                        child: Text(
                      "$a",
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorlist[r]['Number']),
                    child: Center(
                        child: Text(
                      "$b",
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorlist[r]['Number'],
                    ),
                    child: Center(
                        child: Text(
                      "$c",
                      style: TextStyle(fontSize: 30),
                    )),
                  )
                ],
              ),
            ),
            SizedBox(height: 150),
            InkWell(
              onTap: () {
                Future.delayed(
                  Duration(seconds: 1),
                  () {
                    setState(() {
                      a = Random().nextInt(9) + 1;
                    });
                  },
                );
                Future.delayed(
                  Duration(seconds: 2),
                  () {
                    setState(() {
                      b = Random().nextInt(9) + 1;
                    });
                  },
                );
                Future.delayed(
                  Duration(seconds: 3),
                  () {
                    setState(() {
                      c = Random().nextInt(9) + 1;
                    });
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.all(30),
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorlist[r]['Button'],
                ),
                child: Center(
                    child: Text(
                  "Get Lottery",
                  style: TextStyle(fontSize: 25),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
