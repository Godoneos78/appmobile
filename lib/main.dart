import 'package:appmobile/src/login/login_page.dart';
import 'package:appmobile/src/login/register/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venta de Casas',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login': (BuildContext context) => LoginPage(),
                'register': (BuildContext context) => RegisterPage()
      
      },
    );
  }
}
