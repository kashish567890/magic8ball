import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

//stateless widget
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blue[900],
      ),

      body: Ball(),
    );
  }
}

//statefull widget
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

//put the vars and stuff from here
class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          }
          );
        },
        child: Container(
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
