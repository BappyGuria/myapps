import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image App',
      home: HomePaje(),
    );
  }
}

class HomePaje extends StatelessWidget {
  const HomePaje({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('MY APP')),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                print('On Tap');
              },
              onDoubleTap: (){
                print('On Double Tap');
              },
              onLongPress: (){
                print('Long Prese');
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
