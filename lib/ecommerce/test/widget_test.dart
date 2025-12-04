import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce/main.dart';

void main() {
  testWidgets('Home screen displays product cards', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that the home screen is displayed
    expect(find.text('Home'), findsOneWidget);

    // Verify that product cards are displayed
    expect(find.byType(ProductCard), findsWidgets);
  });

  testWidgets('Cart screen displays cart items', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to the cart screen
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();

    // Verify that the cart screen is displayed
    expect(find.text('Your Cart'), findsOneWidget);

    // Verify that cart items are displayed
    expect(find.byType(CartItem), findsWidgets);
  });

  testWidgets('Product details screen displays product information', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to the product details screen
    await tester.tap(find.byType(ProductCard).first);
    await tester.pumpAndSettle();

    // Verify that the product details screen is displayed
    expect(find.text('Product Details'), findsOneWidget);

    // Verify that product information is displayed
    expect(find.text('Product Name'), findsOneWidget);
    expect(find.text('Product Description'), findsOneWidget);
  });
}