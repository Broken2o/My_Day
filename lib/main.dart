import 'package:flutter/material.dart';
import 'package:my_day/views/day_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build (BuildContext context) {
    return  MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
