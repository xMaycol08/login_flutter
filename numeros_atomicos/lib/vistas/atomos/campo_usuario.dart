import 'package:flutter/material.dart';

class CampoUsuario extends StatelessWidget {
  final TextEditingController controller;

  const CampoUsuario({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Usuario',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),
    );
  }
}
