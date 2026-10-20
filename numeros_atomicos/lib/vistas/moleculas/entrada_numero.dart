import 'package:flutter/material.dart';

import '../atomos/campo_numero.dart';

class EntradaNumero extends StatelessWidget {
  final TextEditingController controller;
  final String etiqueta;

  EntradaNumero({required this.controller, required this.etiqueta});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(etiqueta),
        SizedBox(height: 15),
        //llamar al atomo creado
        CampoNumero(controller: controller),
        SizedBox(height: 15),
      ],
    );
  }
}
