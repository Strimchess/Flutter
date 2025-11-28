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
    );
  }
}

class CalendarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
    );
  }
}

class AccountScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
    );
  }
}