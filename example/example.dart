import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';

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
