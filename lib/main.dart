import 'package:flutter/material.dart';
import 'package:test/generated/assets.dart';
import 'package:test/screens.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Layout(),
    );
  }
}



class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}





class _LayoutState extends State<Layout> {

  int _currentIndex = 0;


  final List<Widget> _screens = [
    MainScreen(),
    CoachesScreen(),
    ScheduleScreen(),
    CalendarScreen(),
    AccountScreen()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,


        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image(image: NetworkImage('https://img.icons8.com/ios-filled/50/home.png'),
            width: 35,
            height: 45,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Image(image: NetworkImage('https://img.icons8.com/ios-filled/50/personal-trainer.png'),
            height: 45,
            ),
            label: 'Тренеры',
          ),
          BottomNavigationBarItem(
            icon: Image(image: NetworkImage('https://img.icons8.com/glyph-neue/64/calendar.png'),
            height: 45,
            ),
            label: 'Расписание',
          ),
          BottomNavigationBarItem(
            icon: Image(image: NetworkImage('https://img.icons8.com/ios-glyphs/60/alarm.png'),
            height: 43,
            ),
            label: 'Записи',
          ),BottomNavigationBarItem(
            icon: Image(image: NetworkImage('https://img.icons8.com/material-sharp/48/guest-male.png'),
            height: 45,
            ),
            label: 'Аккаунт',
          ),
        ],
      ),
    );
  }


}