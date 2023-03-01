import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/home_page.dart';
import 'package:modernlogintute/pages/registration_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SecondRoute(),
      title: 'MaterialApp',
      //home: ListView2(),


      initialRoute: 'login',
      //initialRoute: AppRoutes.initialRoute,
      //cambio inicia por la referencia a la clase
      routes: {
       'login': (BuildContext context ) => LoginPage(),
       'registro':(BuildContext context) => Register(),
       'home':(BuildContext context) => const HomePage(),
    },

       onGenerateRoute: (settings) {
       return MaterialPageRoute(
          builder: (context) => LoginPage());
      }
      
    );
  }
}
