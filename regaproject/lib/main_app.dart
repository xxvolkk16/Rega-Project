import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.deepOrange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          actions: <Widget>[
            IconButton(onPressed: (){
              print('Notification icon pressed');
            }, icon: const Icon(Icons.notifications))
          ],
        ),
        body: const Center(
          child: Text("Flutter App"),
        ),
      ),
    );
  }
}