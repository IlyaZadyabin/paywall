import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:paywall_challenge/main.dart';

void onErrorIgnoreOverflowErrors(
  FlutterErrorDetails details, {
  bool forceReport = false,
}) {
  bool ifIsOverflowError = false;

  // Detect overflow error.
  var exception = details.exception;
  if (exception is FlutterError) {
    ifIsOverflowError = !exception.diagnostics.any(
        (e) => e.value.toString().startsWith("A RenderFlex overflowed by"));
  }

  // Ignore if is overflow error.
  if (ifIsOverflowError) {
    if (kDebugMode) {
      print('Overflow error.');
    }
  } else {
    FlutterError.dumpErrorToConsole(details, forceReport: forceReport);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Switch smoke test', (WidgetTester tester) async {
    FlutterError.onError = onErrorIgnoreOverflowErrors;
    await tester.pumpWidget(const App());

    expect(find.text('Get Full Access'), findsOneWidget);
    expect(find.byType(RichText), findsWidgets);
    expect(find.byType(CupertinoSwitch), findsOneWidget);

    await tester.tap(find.byType(CupertinoSwitch));
    await tester.pump();

    expect(find.text('\$2,99/Month'), findsWidgets);
  });
}
