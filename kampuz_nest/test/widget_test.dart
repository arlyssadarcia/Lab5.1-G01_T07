import 'package:flutter_test/flutter_test.dart';
import 'package:kampuz_nest/main.dart';
import 'package:provider/provider.dart';
import 'package:kampuz_nest/providers/app_state.dart';

void main() {
  testWidgets('App starts on Home shell', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppState(),
        child: const KampuzNestApp(),
      ),
    );
    expect(find.text('KampuzNest'), findsWidgets);
  });
}
