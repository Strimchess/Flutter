import 'package:flutter/material.dart';
import 'package:test/generated/assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => chatOnPressed(context),
        tooltip: 'Чат с нами!!!',
        child: Image(image: NetworkImage('https://img.icons8.com/keek/100/chat.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: _appBar(),
    );
  }

  AppBar _appBar(){
    return AppBar(
      actions: [
        Expanded(
            child: Row(
              spacing: 20,
              children: [
                Image(image: AssetImage(Assets.assetsIconsGigaChat)),
                Text('JerseyBESY'),
              ],
            )
        ),
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: onPressed, child: Text('Кнопка 1')),
                TextButton(onPressed: onPressed, child: Text('Кнопка 2')),
                TextButton(onPressed: onPressed, child: Text('Кнопка 3'))
              ],
            ),
        )
      ],
    );
  }

  void onPressed(){

  }

  void chatOnPressed(BuildContext context){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Чаааат'),
        content: Text('Здесь будeт чат!!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

}