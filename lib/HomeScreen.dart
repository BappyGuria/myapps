import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MY APP'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            FloatingActionButton(onPressed: () {
              counter--;
              setState(() {

              });
            },
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 10,),
            FloatingActionButton(onPressed: () {
              counter++;
              setState(() {

              });
            },
              child: Icon(Icons.add),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(),style: TextStyle(
                  fontSize: 40
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
