import 'dart:math';

import 'package:flutter/material.dart';

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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(10)
          )
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY APP'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Elevate Button'),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,foregroundColor: Colors.white
            ),),
            ElevatedButton(onPressed: (){}, child: Text('Elevate Button')),
            ElevatedButton(onPressed: (){}, child: Text('Elevate Button')),
          ],
        ),
      ),
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
