# flutter_ripple

A simple flutter package to show rippple effect in any widget 

## Sample Image



## Usage

[Example] (https://github.com/Destiny-Ed/flutter_ripple/blob/main/example/example.dart)

To use this package : *add the dependency to your [pubspec.yaml] file

```yaml
   dependencies:
        flutter:
            sdk : flutter
        flutter_ripple: ^0.0.1
```

## Add to your dart file

```dart
import 'package:flutter/material.dart';

import 'package:flutter_ripple/flutter_ripple.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RippleExample(),
    );
  }
}



class RippleExample extends StatefulWidget {
  const RippleExample({Key? key}) : super(key: key);

  @override
  _RippleExampleState createState() => _RippleExampleState();
}

class _RippleExampleState extends State<RippleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Ripple'),
      ),
      body: Center(
        child: Stack(
          children: [
            ///Show Ripple Widget
            FlutterRipple(
              child: Text("Flutter Ripple"),
              rippleColor: Colors.blue,
              onTap: () {
                print("hello");
              },
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 100,
              right: 50,
              left: 50,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Searching for location.",
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Find All Location",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

```

## Say Hi To Me

- Twitter : @DestinyEd8
- Linkedin : www.linkedin.com/in/destiny-ed

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
