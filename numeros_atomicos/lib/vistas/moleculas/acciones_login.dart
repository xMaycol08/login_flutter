import 'package:flutter/material.dart';

import '../atomos/boton_ingresar.dart';
import '../atomos/boton_limpiar.dart';

class AccionesLogin extends StatelessWidget {
  final VoidCallback ingresar;
  final VoidCallback limpiar;

  const AccionesLogin({
    super.key,
    required this.ingresar,
    required this.limpiar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BotonIngresar(onPressed: ingresar),
        BotonLimpiar(onPressed: limpiar),
      ],
    );
  }
}
