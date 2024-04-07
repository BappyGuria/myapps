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
        title: Center(child: Text('MY APP')),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                'https://ssl.gstatic.com/onebox/media/sports/logos/mcpMspef1hwHwi9qrfp4YQ_96x96.png'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )),
              child: const Text('CLICK ME'),
            )
          ],
        ),
      ),
    );
  }
}
