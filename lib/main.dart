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
      routes: {'/second': (context) => SecondScreen()},
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
      appBar: _appBar(context),
    );
  }

  AppBar _appBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.blue,
      toolbarHeight: 100,
      actionsPadding: EdgeInsets.only(bottom: 20),
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
                TextButton(onPressed: () => button1OnPressed(context), child: Text('Кнопка 1')),
                TextButton(onPressed: onPressed, child: Text('Кнопка 2')),
                TextButton(onPressed: onPressed, child: Text('Кнопка 3'))
              ],
            ),
        )
      ],
    );
  }

  void button1OnPressed(BuildContext context){
    Navigator.pushNamed(context, '/second');
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

class SecondScreen extends StatelessWidget
{
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
          appBar: AppBar(
            title: Text('data'),

            /*Row(
                children: [
                  TextButton(onPressed: () => Navigator.pop(context), child: Text('back'))
                ],
                //mainAxisAlignment: MainAxisAlignment.center,
            ),*/
            actions: [Text('data3')],
            centerTitle: true,
          ),
          body: Center(
            child: Text("data2", style: TextStyle(
                fontSize: 30,
                color: Colors.red
            ),),
          )
      ),
    );
  }
}