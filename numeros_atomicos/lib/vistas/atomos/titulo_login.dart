import 'package:flutter/material.dart';

class TituloLogin extends StatelessWidget {
  const TituloLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Inicio de sesión',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
