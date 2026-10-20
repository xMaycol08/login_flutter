import '../modelos/numeros_modelos.dart';

class NumerosControladores {
  NumerosModelos calcular(int a, int b, int c) {
    //instaciar la clase modelo
    NumerosModelos datos = NumerosModelos(a, b, c);
    //contar valores diferentes
    datos.diferentes = {a, b, c}.length;
    //suma y promedio
    datos.suma = a + b + c;
    datos.promedio = datos.suma / 3;

    //encontrar mayor y menor
    int mayor = a;
    int menor = a;
    if (b > mayor) {
      mayor = b;
    }
    if (c > mayor) {
      mayor = c;
    }
    if (b < menor) {
      menor = b;
    }
    if (c < menor) {
      menor = c;
    }

    //producto
    datos.producto = mayor * menor;

    //numeros diferentes
    if (datos.diferentes == 3) {
      int restante = datos.suma - mayor - menor;
      if (restante % 3 == 0) {
        datos.divisible = 'El $restante si es divisible por 3';
      } else {
        datos.divisible = 'El $restante no es divisible por 3';
      }
    } else {
      datos.divisible =
          'No hay un número restante para verificar la divisibilidad por 3';
    }
    return datos;
  }
}
