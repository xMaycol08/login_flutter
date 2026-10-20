import 'package:flutter/material.dart';

import 'vistas/pantallas/login_pantalla.dart';
import 'vistas/pantallas/numeros_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPantalla(),
        '/numeros': (context) => NumerosPantalla(),
      },
    );
  }
}
