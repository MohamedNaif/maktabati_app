


import 'package:flutter/material.dart';

class SlideTextAnimation extends StatelessWidget {
  const SlideTextAnimation({
    super.key,
    required AnimationController animationController,
    required Animation<Offset> animation,
  }) : _animationController = animationController, _animation = animation;

  final AnimationController _animationController;
  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        return SlideTransition(
          position: _animation,
          child: const Text(
            'Your journey into the world of reading',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
