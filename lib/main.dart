
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();

}

class _BallPageState extends State<BallPage> {
  Colors bucket_to_hold_value_of_bk_color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bucket_to_hold_value_of_bk_color,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();

}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print('Start');
          setState(() {
            bucket_to_hold_value_of_bk_color = Colors.green;
            ballNumber = Random().nextInt(5) + 1;
            print('ballNumber = $ballNumber');
          });
          print('Finish');
          },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}


