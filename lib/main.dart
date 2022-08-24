import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 6, 126),
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber = 2;

  void changeballstate() {
    setState(
      () {
        BallNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Card(
      color: Colors.blue,
      child: Center(
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                changeballstate();
              },
              child: Image.asset(
                'images/ball$BallNumber.png',
                width: 200,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
