import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Авторизация'),
      debugShowCheckedModeBanner: false,
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
 
  Map<String,String> users= { 
    'Sergey':'123',
    'Kate':'123',
    'Natasha':'123',
    };
  bool okey=false;
  bool found=false;
  
  checkname(txt) {
    print(txt);
   setState(() {
        found=  users.containsKey(txt);
      });
    
  }
    checkPass(pass) {
   
   setState(() {
        okey=  users['Sergey']==pass;
      });
    
  }
 
 
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
              TextFormField(
                  decoration: const InputDecoration(hintText: 'Please write a username'),
                   onChanged: (txt) {checkname(txt);},
                ),
                Text(found==true ? 'Найден' : 'Не найден'),
                  TextFormField(
                  readOnly: !found,
                  decoration: const InputDecoration(hintText: 'Please write a password'),
                   onChanged:(pass) { 
                          checkPass(pass);
                   },
                ),
                if(okey) FloatingActionButton(child:Text("вход"),onPressed: null),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
