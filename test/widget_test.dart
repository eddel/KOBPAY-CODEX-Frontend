import 'package:flutter_test/flutter_test.dart';
import 'package:kobpay_mobile/main.dart';

void main() {
  testWidgets('KobpayApp builds', (WidgetTester tester) async {
    await tester.pumpWidget(const KobpayApp());
    await tester.pumpAndSettle();
    expect(find.byType(KobpayApp), findsOneWidget);
  });
}
