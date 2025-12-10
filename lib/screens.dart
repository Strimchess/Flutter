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

enum AuthState {
  signIn,
  signUp,
  profile
}

class AccountScreen extends StatefulWidget{

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>{

  AuthState _currentState = AuthState.signIn;
  bool _isSignedIn = false;
  
  // Sign In Controllers
  final _signInPhoneCtrl = TextEditingController();
  final _signInPasswordCtrl = TextEditingController();
  
  // Sign Up Controllers
  final _signUpNameCtrl = TextEditingController();
  final _signUpPhoneCtrl = TextEditingController();
  final _signUpEmailCtrl = TextEditingController();
  final _signUpPasswordCtrl = TextEditingController();
  final _signUpConfirmPasswordCtrl = TextEditingController();
  
  // Profile Data
  String _userName = '';
  String _userPhone = '';
  String _userEmail = '';

  @override
  void dispose() {
    _signInPhoneCtrl.dispose();
    _signInPasswordCtrl.dispose();
    _signUpNameCtrl.dispose();
    _signUpPhoneCtrl.dispose();
    _signUpEmailCtrl.dispose();
    _signUpPasswordCtrl.dispose();
    _signUpConfirmPasswordCtrl.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    // TODO: Implement actual sign in logic
    if (_signInPhoneCtrl.text.isNotEmpty && _signInPasswordCtrl.text.isNotEmpty) {
      setState(() {
        _isSignedIn = true;
        _userName = 'Пользователь';
        _userPhone = _signInPhoneCtrl.text;
        _userEmail = '';
        _currentState = AuthState.profile;
      });
    }
  }

  void _handleSignUp() {
    // TODO: Implement actual sign up logic
    if (_signUpNameCtrl.text.isNotEmpty && 
        _signUpPhoneCtrl.text.isNotEmpty && 
        _signUpEmailCtrl.text.isNotEmpty &&
        _signUpPasswordCtrl.text.isNotEmpty &&
        _signUpPasswordCtrl.text == _signUpConfirmPasswordCtrl.text) {
      setState(() {
        _isSignedIn = true;
        _userName = _signUpNameCtrl.text;
        _userPhone = _signUpPhoneCtrl.text;
        _userEmail = _signUpEmailCtrl.text;
        _currentState = AuthState.profile;
      });
    }
  }

  void _handleSignOut() {
    setState(() {
      _isSignedIn = false;
      _currentState = AuthState.signIn;
      _signInPhoneCtrl.clear();
      _signInPasswordCtrl.clear();
      _signUpNameCtrl.clear();
      _signUpPhoneCtrl.clear();
      _signUpEmailCtrl.clear();
      _signUpPasswordCtrl.clear();
      _signUpConfirmPasswordCtrl.clear();
    });
  }

  Widget _buildSignInView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Text(
            'ВХОД',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          TextField(
            controller: _signInPhoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Телефон',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          TextField(
            controller: _signInPasswordCtrl,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Пароль',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _handleSignIn,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Войти',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                _currentState = AuthState.signUp;
              });
            },
            child: Text(
              'Нет аккаунта? Зарегистрируйтесь',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpView() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              'РЕГИСТРАЦИЯ',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _signUpNameCtrl,
              decoration: InputDecoration(
                labelText: 'Имя',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: _signUpPhoneCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Телефон',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            TextField(
              controller: _signUpEmailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextField(
              controller: _signUpPasswordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            TextField(
              controller: _signUpConfirmPasswordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Подтвердите пароль',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSignUp,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentState = AuthState.signIn;
                });
              },
              child: Text(
                'Уже есть аккаунт? Войдите',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            _userName,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              spacing: 15,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.black87),
                    SizedBox(width: 15),
                    Text(
                      'Телефон:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        _userPhone,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                if (_userEmail.isNotEmpty) ...[
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.black87),
                      SizedBox(width: 15),
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          _userEmail,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: _handleSignOut,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Выйти',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _currentState == AuthState.signIn
            ? _buildSignInView()
            : _currentState == AuthState.signUp
                ? _buildSignUpView()
                : _buildProfileView(),
      ),
    );
  }
}