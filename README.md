# flutter_ripple

A simple flutter package to show rippple effect in any widget 

## Usage

[Example] (https://github.com/Destiny-Ed/date_count_down/blob/main/example/example.dart)

To use this package : *add the dependency to your [pubspec.yaml] file

```yaml
   dependencies:
        flutter:
            sdk : flutter
        date_count_down:
```

## Add to your dart file

```dart
    import 'package:flutter/material.dart';

import 'package:date_count_down/date_count_down.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Count Down',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Count Down'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String countDown = 'Loading';

  @override
  Widget build(BuildContext context) {
    //List of Date to countDown
    List<DateTime> s = [
      DateTime.utc(2022),
      DateTime.utc(2021),
      DateTime(2021, 2, 7)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Expanded(
              child: ListView(
                children: List.generate(3, (index) {
                  countDown = CountDown()
                      .timeLeft(s[index], 'Time Ended', longDateName: true);
                  return Text(
                    countDown,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
