import 'package:flutter/material.dart';

class GreatText extends StatefulWidget {
  @override
  _GreatTextState createState() => _GreatTextState();
}

class _GreatTextState extends State<GreatText> {
  int _counter = 0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter += 2;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Счётчик: $_counter", style: TextStyle(fontSize: 25, color: Colors.green),),
        ElevatedButton(onPressed: _incrementCounter1, child: Text("Увеличить на 1", style: TextStyle(fontSize: 20),)),
        ElevatedButton(onPressed: _incrementCounter2, child: Text("Увеличить на 2", style: TextStyle(fontSize: 20))),
        ElevatedButton(onPressed: _resetCounter, child: Text("Reset", style: TextStyle(fontSize: 20)))
      ],
      
    );
  }
}
