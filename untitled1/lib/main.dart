import 'package:flutter/material.dart';
import 'package:flutter_app/signin.dart';
import 'package:flutter_app/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
  '/auth':(BuildContext context) => AuthScreen(),
  '/reg':(BuildContext context) => RegScreen()
},
      title: 'Flutter App!!',  
      home: const MyHomePage(title: 'Авторизация'),
   );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
      
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child:Text('auth'),
              onPressed: () {
                Navigator.pushNamed(
    context,
    '/auth');
              },
            ),
            FloatingActionButton(
              child: Text('register'),
              onPressed: () {
                Navigator.pushNamed(
    context,
    '/reg');
              },
            ),
          ],
        ),
      ),
      );
  }
}
