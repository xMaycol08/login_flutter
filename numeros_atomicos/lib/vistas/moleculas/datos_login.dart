import 'package:flutter/material.dart';

import '../atomos/campo_contrasena.dart';
import '../atomos/campo_usuario.dart';

class DatosLogin extends StatelessWidget {
  final TextEditingController usuario;
  final TextEditingController contrasena;

  const DatosLogin({
    super.key,
    required this.usuario,
    required this.contrasena,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CampoUsuario(controller: usuario),
        const SizedBox(height: 15),
        CampoContrasena(controller: contrasena),
      ],
    );
  }
}
