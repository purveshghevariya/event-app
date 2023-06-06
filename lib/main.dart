import 'package:event/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Event());
}

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
