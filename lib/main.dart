import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ChangeColorTask()));
}

class ChangeColorTask extends StatefulWidget {
  const ChangeColorTask({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<ChangeColorTask> {
  final Random _random = Random();
  Color _color = const Color.fromARGB(255,6,80,100);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: const Center(
            child: Text(
              "Hey There!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30, 
                fontFamily: 'SansSerif',
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
              ),
            ),     
        ),
      ),
    );
  }
}

