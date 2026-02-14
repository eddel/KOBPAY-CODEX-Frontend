import 'package:flutter_test/flutter_test.dart';
import 'package:kobpay_mobile/main.dart';

void main() {
  testWidgets('KobPayApp builds', (WidgetTester tester) async {
    await tester.pumpWidget(const KobPayApp());
    await tester.pumpAndSettle();
    expect(find.byType(KobPayApp), findsOneWidget);
  });
}
