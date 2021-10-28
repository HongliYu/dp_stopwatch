The default widget Stopwatch() class has no method to get the values as a stream. It only outputs a single value whenever one of its methods is called. This repo brings a better version of stopwatch

## Features

<img src="https://github.com/HongliYu/dp_stopwatch/blob/master/demo.gif?raw=true" alt="alt text"  height="400">

## Getting started

The project shall migrate to null safety

## Usage

- Create viewmodel
```dart
  final stopwatchViewModel = DPStopwatchViewModel(
    clockTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 32,
    ),
  );
```
- Bind the viewmodel to widget
```dart
    ...
    DPStopWatchWidget(
        stopwatchViewModel,
    ),
    ...
```

- Control the widget via viewmodel, e.x. when user clicks a button
```dart
    ...
    TextButton(
        style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
        stopwatchViewModel.pause?.call();
        },
        child: const Text('pause'),
    ),
    ...
```
