import 'package:flutter/material.dart';
import 'package:test/generated/assets.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 37),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 20,
          children: [

            Text('Jersey BESY',
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
            ),),

            Text('Jersey BESY - это место, где исполняются мечты (в отличие от студии S17) тех, кто всегда хотел танцевать!',
            style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.justify,
            ),

            Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=00590468a8a595e34b243ef763fe499031bbf280-5234655-images-thumbs&n=13')),

            Text('В нашей студии есть 10 направлений: High Heels, Strip, Twerk, Dancehall, Dancemix, Hip-Hop, Choreo, Vogue, растяжка и йога',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 22,
              ),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}

class CoachesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
    );
  }
}

class ScheduleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Скоро!', style: TextStyle(
          fontSize: 70
      ),),
    );
  }
}

class CalendarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Скоро!', style: TextStyle(
        fontSize: 70
      ),),
    );
  }
}

class AccountScreen extends StatefulWidget{

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>{

  final loginCtrl = TextEditingController();
  final pswdCtrl = TextEditingController();

  int _currentIndex = 0;

  final List<Scaffold> _forms = [

  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ВХОД', style: TextStyle(
              fontSize: 60
            ),),

            TextField(
              controller: loginCtrl,
              decoration: InputDecoration(
                label: Text('Телефон')
              ),
            ),

            TextField(
              controller: pswdCtrl,
              decoration: InputDecoration(
                  label: Text('Пароль')
              ),
            ),

            TextButton(onPressed: () => (), child: Text('Войти',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),),),

            TextButton(onPressed: () => (),
            child: Text('Нет аккаунта? Ты лох! Регайся быстрее!', style: TextStyle(
              fontStyle: FontStyle.italic
            ),))
          ],
        ),
      )),
    );
  }
}