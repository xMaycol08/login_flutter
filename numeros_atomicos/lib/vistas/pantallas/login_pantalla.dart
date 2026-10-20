import 'package:flutter/material.dart';

import '../organismos/formulario_login.dart';

class LoginPantalla extends StatefulWidget {
  //constructor
  const LoginPantalla({super.key});

  @override
  State<LoginPantalla> createState() => _LoginPantallaState();
}

class _LoginPantallaState extends State<LoginPantalla> {
  //mapeo de objetos
  final usuario = TextEditingController();
  final contrasena = TextEditingController();

  //metodo ingresar
  void ingresar() {
    if (usuario.text.isEmpty || contrasena.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ingrese usuario y contraseña')),
      );
      return;
    }

    if (usuario.text == 'maycol' && contrasena.text == '1234') {
      limpiar();
      Navigator.pushReplacementNamed(context, '/numeros');
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Usuario o contraseña incorrectos')),
    );
  }

  //limpiar
  void limpiar() {
    usuario.clear();
    contrasena.clear();
  }

  //liberar controladores
  @override
  void dispose() {
    usuario.dispose();
    contrasena.dispose();
    super.dispose();
  }

  //diseño de pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acceso'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: FormularioLogin(
            usuario: usuario,
            contrasena: contrasena,
            ingresar: ingresar,
            limpiar: limpiar,
          ),
        ),
      ),
    );
  }
}
