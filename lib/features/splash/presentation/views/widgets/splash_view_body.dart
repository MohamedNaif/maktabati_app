import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import 'slide_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        SlideTextAnimation(
            animationController: _animationController, animation: _animation)
      ],
    );
  }

  void initSlideAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push('/homeView');
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade, duration: kTranstionDuration);
      },
    );
  }
}
