import 'package:flutter/material.dart';

class MoveBoxAnimation extends StatefulWidget {
  @override
  _MoveBoxAnimationState createState() => _MoveBoxAnimationState();
}

class _MoveBoxAnimationState extends State<MoveBoxAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(1.0, 0.0),
    ).animate(_animationController);
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

