import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(top: -90, left: -121, child: _circularRegister()),
                Positioned(
                  child: _textRegister(),
                  top: 60,
                  left: 15,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 100),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _imagenUser(),
                        SizedBox(height: 30),
                        _textfielEmail(),
                        _textfielNombre(),
                        _textfielApellido(),
                        _textfielTelefono(),
                        _textfielPass(),
                        _textfielPassConf(),
                        _buttonLogin1(),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }

  Widget _imagenUser() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('REGISTRARSE'),
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

  Widget _textfielPassConf() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Confirmar Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.lock_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textfielTelefono() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Telefono',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.send_to_mobile_rounded,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textfielNombre() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Nombre',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon:
                Icon(Icons.person, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textfielApellido() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Apellido',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.person_3_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textfielEmail() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 119, 161, 233),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon:
                Icon(Icons.email, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ));
  }

  Widget _textRegister() {
    return Text('REGISTRO',
        
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)
            );
  }

  Widget _iconback() {
    return IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget _circularRegister() {
    return Container(
      
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.lightBlue,),
    );
  }

  Widget _buttonLogin1() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('REGISTRARSE'),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 20)),
      ),
    );
  }
}
