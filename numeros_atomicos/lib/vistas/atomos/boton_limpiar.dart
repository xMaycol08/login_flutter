import 'package:flutter/material.dart';

class BotonLimpiar extends StatelessWidget {
  final VoidCallback onPressed;

  const BotonLimpiar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      child: const Text('Limpiar'),
    );
  }
}
