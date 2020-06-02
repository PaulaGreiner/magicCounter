import 'package:flutter/material.dart';
import './player_container.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int redCounter = 20;
  String redImage = "red";
  int blueCounter = 20;
  String blueImage = "blue";

  void increaseBlueCounter() {
    setState(() {
      blueCounter ++;
    });
  }

  void decreaseBlueCounter() {
    setState(() {
      blueCounter --;
    });
  }

 void increaseRedCounter() { 
    setState(() {
      redCounter ++;
    });
  }

  void decreaseRedCounter() {
    setState(() {
      redCounter --;
    });
  }

  void resetCounters() {
    setState(() {
      blueCounter = 20;
      redCounter = 20;
    });
  }

  Widget Menu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: resetCounters,
          child: Text('Reset')
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              this.blueImage = "red";
            });
          },
          child: Text('Change Color')
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Player(
              color: blueImage,
              counter: blueCounter,
              onIncrease: increaseBlueCounter,
              onDecrease: decreaseBlueCounter,
            ),
          ),
          Menu(),
          Expanded(
            child: Player(
              counter: redCounter,
              color: redImage,
              onIncrease: increaseRedCounter,
              onDecrease: decreaseRedCounter,
            ),
          ),
        ],
      ),
    );
  }
}
