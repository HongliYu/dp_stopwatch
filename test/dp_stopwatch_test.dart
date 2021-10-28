import 'package:flutter_test/flutter_test.dart';
import 'package:dp_stopwatch/dp_stopwatch.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('stopwatch state test', (WidgetTester tester) async {
    final stopwatchViewModel = DPStopwatchViewModel(
      clockTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 32,
      ),
    );
    final stopWatchWidget = DPStopWatchWidget(
      stopwatchViewModel,
    );
    expect(stopwatchViewModel.start, isNull);
    expect(stopwatchViewModel.pause, isNull);
    expect(stopwatchViewModel.resume, isNull);
    expect(stopwatchViewModel.stop, isNull);

    Widget testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(home: stopWatchWidget),
    );

    await tester.pumpWidget(testWidget);
    expect(stopwatchViewModel.start, isNotNull);
    expect(stopwatchViewModel.pause, isNotNull);
    expect(stopwatchViewModel.resume, isNotNull);
    expect(stopwatchViewModel.stop, isNotNull);

    stopwatchViewModel.start?.call();
    expect(stopwatchViewModel.timer, isNotNull);

    stopwatchViewModel.pause?.call();
    expect(stopwatchViewModel.timer?.isActive, false);

    stopwatchViewModel.resume?.call();
    expect(stopwatchViewModel.timer?.isActive, true);

    stopwatchViewModel.stop?.call();
    expect(stopwatchViewModel.timer, isNull);
  });
}
