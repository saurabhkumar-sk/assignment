// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';

class CreatePollButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  CreatePollButton({
    super.key,
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    required Widget child,
    required VoidCallback onPressed,
  })  : _painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _callback = onPressed,
        _radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: const BoxConstraints(minWidth: 80, minHeight: 25),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : strokeWidth = strokeWidth,
        radius = radius,
        gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}

//.........................

class Ellipse40 extends StatelessWidget {
  const Ellipse40({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 486.05,
      height: 201.79,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.07, 1.00),
          end: Alignment(0.07, -1),
          colors: [Color(0xFFF5F4F4), Color(0xF7F5F4F4), Color(0x00F5F4F4)],
        ),
        shape: OvalBorder(
          side: BorderSide(
            width: 1.50,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color.fromARGB(255, 213, 174, 161),
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0.1),
            Sports(),
            // const SizedBox(width: 36),
            Bussiness(),
            SizedBox(width: 35),
            Treanding(),
            // const SizedBox(width: 36),
            Live(),
            SizedBox(width: 0.1),
          ],
        ),
      ),
    );
  }
}

//>>>>>>>>>

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: const ShapeDecoration(
            gradient: LinearGradient(
              transform: GradientRotation(365),
              colors: [
                Color.fromARGB(255, 255, 146, 12),
                Color.fromARGB(255, 134, 55, 22),
              ],
            ),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.movie,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Opacity(
            opacity: 0.40,
            child: Container(
              width: 45,
              height: 45,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.03, -1.00),
                  end: Alignment(0.03, 1),
                  colors: [Color(0xFFF58600), Color(0xFFC6004C)],
                ),
                shape: OvalBorder(),
              ),
              child: const Icon(
                Icons.movie,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//>>>>>>>>>
class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 38,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 0.70,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF464646),
                      ),
                    ),
                  ),
                  child: const Icon(Icons.speed),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Bussiness extends StatelessWidget {
  const Bussiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 38,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 0.70,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF464646),
                      ),
                    ),
                  ),
                  child: const Icon(Icons.business),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Treanding extends StatelessWidget {
  const Treanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 38,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 0.70,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF464646),
                      ),
                    ),
                  ),
                  child: const Icon(Icons.trending_up),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Live extends StatelessWidget {
  const Live({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 38,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 0.70,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF464646),
                      ),
                    ),
                  ),
                  child: const Icon(Icons.videocam),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
