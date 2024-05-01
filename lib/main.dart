import 'dart:math';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image App',
      home:HomeScreen(),
    );
  }
}




// /// All Style Apply
// class ButtonStyles{
//   static ButtonStyle elevatStyle = ElevatedButton.styleFrom(
// backgroundColor:  Colors.blue,
//     foregroundColor: Colors.white
//   );
// }
