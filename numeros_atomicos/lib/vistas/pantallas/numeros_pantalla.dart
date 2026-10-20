import 'package:flutter/material.dart';

import '../../controladores/numeros_controladores.dart';
import '../../modelos/numeros_modelos.dart';
import '../organismos/formulario_numeros.dart';

class NumerosPantalla extends StatefulWidget {
  //constructor

  @override
  State<NumerosPantalla> createState() => _NumerosPantallaState();

  NumerosPantalla({super.key});
}

class _NumerosPantallaState extends State<NumerosPantalla> {
  //mapeo de objetos
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  //instaciacion de clases
  final controladores = NumerosControladores();
  //variable para almacenar resultados
  NumerosModelos? resultado;
  //metodo calcular
  void calcular() {
    int? n1 = int.tryParse(a.text);
    int? n2 = int.tryParse(b.text);
    int? n3 = int.tryParse(c.text);
    if (n1 == null || n2 == null || n3 == null) {
      setState(() {
        resultado = null;
      });
      return;
    }

    setState(() {
      resultado = controladores.calcular(n1, n2, n3);
    });
  }

  //limpiar
  void limpiar() {
    a.clear();
    b.clear();
    c.clear();
    setState(() {
      resultado = null;
    });
  }

  //diseño de pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ejercicio de Numeros Atomicos',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Ingrese tres números enteros:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //importa formulario
            FormularioNumeros(a: a, b: b, c: c),
            SizedBox(height: 20),
            //boton calcular
            ElevatedButton(
              onPressed: calcular,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: limpiar,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
              child: Text('Limpiar'),
            ),
            SizedBox(height: 20),
            //mostrar resultados
            if (resultado != null)
              Card(
                color: Colors.blueAccent,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Resultados:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Diferentes: ${resultado!.diferentes}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Suma: ${resultado!.suma}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Promedio: ${resultado!.promedio}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Producto: ${resultado!.producto}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Divisible: ${resultado!.divisible}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
