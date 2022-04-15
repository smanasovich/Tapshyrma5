import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int soljak = 3;
  int onjak = 6;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void baskandaOzgort() {
    Random random = Random();
    setState(() {});
    soljak = random.nextInt(6) + 1;
    onjak = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5353),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ТАПШЫРМА - 05',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFF5353),
        elevation: 0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              //flex: 1,
              child: InkWell(
                onTap: () {
                  baskandaOzgort();
                  Random random = Random(6);
                  print('soljak basyldy,===> $soljak ');
                },
                child: Image.asset(
                  'assets/images/Dice_$soljak.png',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              //flex: 1,
              child: InkWell(
                onTap: () {
                  baskandaOzgort();
                  Random random = Random(6);
                  print('onjak basyldy ===> $onjak');
                },
                child: Image.asset(
                  'assets/images/Dice_$onjak.png',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      // tooltip: 'Increment',
      //child: const Icon(Icons.add),
      // ),
    );
  }
}
