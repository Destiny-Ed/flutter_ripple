library flutter_ripple;

import 'package:flutter/material.dart';

///A Flutter Class For Showing Ripple Effects
class FlutterRipple extends StatefulWidget {
  FlutterRipple(
      {required this.child,
      Key? key,
      this.rippleColor,
      this.duration,
      this.onTap,
      this.rippleShape,
      this.radius})
      : super(key: key);

  final Duration? duration;
  final double? radius;
  final Widget? child;
  final Color? rippleColor;
  final BoxShape? rippleShape;
  final VoidCallback? onTap;

  @override
  _FlutterRippleState createState() => _FlutterRippleState();
}

///A Simple Widget that show how the flutter ripple package is used

/// ```dart

///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         title: const Text('Flutter Ripple'),
///       ),
///       body: Center(
///     children: [
///      FlutterRipple(
///         child: Text("Flutter Ripple"),
///         rippleColor: MyColors().blue,
///         onTap: () {
///           print("hello");
///         },
///       ),
///       Positioned(
///           top: MediaQuery.of(context).size.height / 2 + 100,
///           right: 50,
///           left: 50,
///           child: Container(
///             child: Column(
///               children: [
///                 Text(
///                   "Searching for location.",
///                   textAlign: TextAlign.center,
///                 ),
///                 Container(
///                  margin: const EdgeInsets.only(top: 10),
///                   padding: const EdgeInsets.symmetric(
///                       horizontal: 30, vertical: 15),
///                   decoration: BoxDecoration(
///                       color: Colors.blue,
///                       borderRadius: BorderRadius.circular(50)),
///                   child: Text(
///                     "Find All Location",
///                     style: TextStyle(color: Colors.white),
///                   ),
///                 )
///              ],
///             ),
///           ))
///     ],
///   ),
/// );
///     );
///
/// }
/// ```

class _FlutterRippleState extends State<FlutterRipple>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: widget.duration ?? Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: widget.onTap ?? null, child: _bodyWidget());
  }

  Widget _bodyWidget() {
    return AnimatedBuilder(
      animation:
          CurvedAnimation(parent: _controller!, curve: Curves.fastOutSlowIn),
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ...List.generate(
              4,
              (index) => _containerWidget((100 * index) * _controller!.value),
            ),
            Align(child: widget.child),
          ],
        );
      },
    );
  }

  Widget _containerWidget(double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          shape: widget.rippleShape ?? BoxShape.circle,
          color: widget.rippleColor == null
              ? Colors.blue.withOpacity(1 - _controller!.value)
              : widget.rippleColor!.withOpacity(1 - _controller!.value)),
    );
  }
}
