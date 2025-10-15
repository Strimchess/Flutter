import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

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
      home: const MyHomePage(title: 'Регистрация'),
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
 

  TextEditingController namecont= TextEditingController();
  TextEditingController passcont= TextEditingController(); 

  List<String> names =['Sergey','Alex','Kate'];

  bool found=false;
  
  checkname(txt) {
    print(txt);
   setState(() {
        found= names.contains(txt);
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
                  controller: namecont,
                  decoration: const InputDecoration(hintText: 'Please write a username'),
                   onChanged: (txt) {checkname(txt);},
                ),
                Text(found.toString()),
                  TextFormField(
                  controller: passcont,
                  decoration: const InputDecoration(hintText: 'Please write a password'),
                   onChanged:null,
                ),
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
