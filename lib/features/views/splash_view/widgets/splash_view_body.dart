import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'logo_image.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  final List<AnimationController> _animationControllers = [];
  final List<Animation<Offset>> _slidingAnimations = [];

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    disposeAnimationControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const LogoImage(),
        const SizedBox(height: 10),
        SlidingText(slidingAnimations: _slidingAnimations),
      ],
    );
  }

  void initSlidingAnimation() {
    const List<Offset> offsets = [
      Offset(-2, 0),
      Offset(2, 0),
      Offset(0, 3),
    ];
    for (int i = 0; i < 3; i++) {
      var animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      );
      _animationControllers.add(animationController);
      var slidingAnimation = Tween<Offset>(begin: offsets[i], end: Offset.zero)
          .animate(_animationControllers[i]);
      _slidingAnimations.add(slidingAnimation);
      _animationControllers[i].forward();
    }
  }

  void disposeAnimationControllers() {
    for (int i = 0; i < 3; i++) {
      _animationControllers[i].dispose();
    }
  }

  void navigateToHomeView() {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.go(AppRoutes.kHomeView),
    );
  }

}
