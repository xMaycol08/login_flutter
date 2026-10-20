import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:numeros_atomicos/main.dart';

void main() {
  testWidgets('Permite limpiar el formulario de inicio de sesión', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField).at(0), 'maycol');
    await tester.enterText(find.byType(TextField).at(1), '1234');
    await tester.tap(find.text('Limpiar'));
    await tester.pump();

    expect(find.text('maycol'), findsNothing);
    expect(find.text('1234'), findsNothing);
    expect(find.text('Inicio de sesión'), findsOneWidget);
  });

  testWidgets('Ingresa con las credenciales correctas', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField).at(0), 'maycol');
    await tester.enterText(find.byType(TextField).at(1), '1234');
    await tester.tap(find.text('Ingresar'));
    await tester.pumpAndSettle();

    expect(find.text('Ejercicio de Numeros Atomicos'), findsOneWidget);
  });
}
