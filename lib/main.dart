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
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth < 400){
            return Text('Mobile Device');
          }else if(constraints.maxWidth < 800){
            return Text('Tablet Device');
          }else if(constraints.maxWidth < 1000){
            return Text('Laptop Device');
          }
          return Text('PC Device');
        },)
      ),
    );
  }
}
