import 'package:appmobile/src/login/login_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(top: -90, left: -121, child: _circularLogin()),
          Positioned(
            child: _textLogin(),
            top: 60,
            left: 20,
          ),
          Column(
            children: [
              _imageBanner(),
              _textfielEmail(),
              _textfielPass(),
              _buttonLogin(),
              _rowDontHaveAccount(),
            ],
          ),
        ],
      ),
    ));
  }

  Widget _rowDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 80, 29, 223)),
        ),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 80, 29, 223)),
          ),
        ),
      ],
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Ingresar'),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 20)),
      ),
    );
  }

  Widget _textfielPass() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon:
                Icon(Icons.lock, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textfielEmail() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.email_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _circularLogin() {
    return Container(
      width: 240,
      height: 240,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.lightBlue),
    );
  }

  Widget _textLogin() {
    return Text(
      'LOGIN',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 100, bottom: MediaQuery.of(context).size.height * 0.20),
      child: Image.asset(
        'assets/img/casa.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
