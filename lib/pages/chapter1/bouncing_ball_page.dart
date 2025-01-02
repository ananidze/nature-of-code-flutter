import 'package:flutter/material.dart';

class BouncingBallPage extends StatefulWidget {
  const BouncingBallPage({super.key});

  @override
  State<BouncingBallPage> createState() => _BouncingBallPageState();
}

class _BouncingBallPageState extends State<BouncingBallPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double x;
  late double y;
  late double xspeed;
  late double yspeed;
  final double ballSize = 48;

  @override
  void initState() {
    super.initState();

    x = 100;
    y = 100;
    xspeed = 2.5;
    yspeed = 2.0;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 16),
    )..addListener(() {
        setState(() {
          x += xspeed;
          y += yspeed;

          if (x > MediaQuery.of(context).size.width - ballSize || x < 0) {
            xspeed = -xspeed;
          }
          if (y > MediaQuery.of(context).size.height - ballSize || y < 0) {
            yspeed = -yspeed;
          }
        });
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Ball Simulation'),
      ),
      body: CustomPaint(
        painter: BallPainter(
          x: x,
          y: y,
          ballSize: ballSize,
        ),
        child: Container(),
      ),
    );
  }
}

class BallPainter extends CustomPainter {
  BallPainter({
    required this.x,
    required this.y,
    required this.ballSize,
  });

  final double x;
  final double y;
  final double ballSize;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas
      ..drawCircle(
        Offset(x + ballSize / 2, y + ballSize / 2),
        ballSize / 2,
        paint,
      )
      ..drawCircle(
        Offset(x + ballSize / 2, y + ballSize / 2),
        ballSize / 2,
        strokePaint,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
