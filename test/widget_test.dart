import 'package:flutter_test/flutter_test.dart';
import 'package:kobpay_mobile/main.dart';

void main() {
  testWidgets('Myapp builds', (WidgetTester tester) async {
    await tester.pumpWidget(const Myapp());
    await tester.pumpAndSettle();
    expect(find.byType(Myapp), findsOneWidget);
  });
}
