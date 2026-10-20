import 'package:flutter/material.dart';

class CampoContrasena extends StatelessWidget {
  final TextEditingController controller;

  const CampoContrasena({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Contraseña',
        prefixIcon: Icon(Icons.lock),
        border: OutlineInputBorder(),
      ),
    );
  }
}
