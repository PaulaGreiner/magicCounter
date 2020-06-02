import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  final int counter;
  final String color; 
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  Player({
    @required this.counter,
    this.color,
    @required this.onIncrease,
    @required this.onDecrease,
  });

  String getBackground() {
    return 'assets/' + this.color + '.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(getBackground()),
          fit: BoxFit.fill
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: onDecrease,
            child: Icon(Icons.remove),
            backgroundColor: Colors.transparent
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              counter.toString(),
              style: TextStyle(fontSize: 120, color: Colors.white),
            ),
          ),
          FloatingActionButton(
            onPressed: onIncrease,
            child: Icon(Icons.add),
            backgroundColor: Colors.transparent,
          ),
        ],
      )
    );
  }
}