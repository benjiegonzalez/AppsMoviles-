import 'package:flutter/material.dart';

import 'services/mockapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica Async en Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 54, 54, 54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 94, 94, 94),
        ),
      ),
      home: const FlutterAsync(title: 'Asincronía en Flutter'),
    );
  }
}

class FlutterAsync extends StatefulWidget {
  const FlutterAsync({super.key, required this.title});

  final String title;

  @override
  State<FlutterAsync> createState() => _FlutterAsyncState();
}

class _FlutterAsyncState extends State<FlutterAsync> {
  //DECLARACIONES DE VARIABLES
  int fast = 0;
  int fast_time = 0;
  double fast_with = 0;
  int fast_text = 0;

  int medium = 0;
  int medium_time = 0;
  double medium_bar_with = 0;
  int medium_text = 0;

  int slow = 0;
  int slow_time = 0;
  double slow_bar_with = 0;
  int slow_text = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
              decoration: ShapeDecoration(
                color: Colors.green.shade900,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.flash_on,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    fast_with = 300;
                    fast_time = 1;
                  });
                  fast = await MockApi().getFerrariInteger();
                  setState(() {
                    fast_text = fast;
                    fast_time = 0;
                    fast_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: fast_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.green.shade900),
                  duration: Duration(seconds: fast_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                fast.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.orange.shade700,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.airport_shuttle,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    medium_bar_with = 300;
                    medium_time = 3;
                  });
                  medium = await MockApi().getHyundaiInteger();
                  setState(() {
                    medium_text = medium;
                    medium_time = 0;
                    medium_bar_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: medium_bar_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.orange.shade700),
                  duration: Duration(seconds: medium_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                medium.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.redAccent.shade700,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.directions_walk,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    slow_bar_with = 300;
                    slow_time = 10;
                  });
                  slow = await MockApi().getFisherPriceInteger();
                  setState(() {
                    slow_text = slow;
                    slow_time = 0;
                    slow_bar_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: slow_bar_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.redAccent.shade700),
                  duration: Duration(seconds: slow_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                slow.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
