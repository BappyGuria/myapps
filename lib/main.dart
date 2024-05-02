import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image App',
      home: const HomeScreen(),
      theme: ThemeData(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).orientation);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green,
              );
            }
            else {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.yellow,
              );
            }
          },
        ),
      ),
    );
  }
}
