import 'package:flutter/material.dart';

import '../atomos/titulo_login.dart';
import '../moleculas/acciones_login.dart';
import '../moleculas/datos_login.dart';

class FormularioLogin extends StatelessWidget {
  final TextEditingController usuario;
  final TextEditingController contrasena;
  final VoidCallback ingresar;
  final VoidCallback limpiar;

  const FormularioLogin({
    super.key,
    required this.usuario,
    required this.contrasena,
    required this.ingresar,
    required this.limpiar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TituloLogin(),
        const SizedBox(height: 25),
        DatosLogin(usuario: usuario, contrasena: contrasena),
        const SizedBox(height: 20),
        AccionesLogin(ingresar: ingresar, limpiar: limpiar),
      ],
    );
  }
}
