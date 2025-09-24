// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:disenos/main.dart';

void main() {
  testWidgets('App initialization smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    await tester.pump(); // Allow for initial render

    // Verify that the app initializes correctly with home page
    expect(find.text('Hola! 👋'), findsOneWidget);
    expect(find.text('Bienvenido a la app de diseños'), findsOneWidget);
    
    // Verify that main title is there
    expect(find.text('Explora los Diseños'), findsOneWidget);
  });
  
  testWidgets('Home page content test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    await tester.pump();

    // Verify design cards are present
    expect(find.text('Diseño Básico'), findsOneWidget);
    expect(find.text('Scroll Vertical'), findsOneWidget);
    expect(find.text('Botones Creativos'), findsOneWidget);
    
    // Verify card descriptions
    expect(find.text('Layout con imagen y texto'), findsOneWidget);
    expect(find.text('PageView con efectos visuales'), findsOneWidget);
    expect(find.text('Grid de botones con glassmorphism'), findsOneWidget);
  });
}
