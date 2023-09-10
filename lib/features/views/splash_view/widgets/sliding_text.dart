import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimations,
  });

  final List<Animation<Offset>> slidingAnimations;

  @override
  Widget build(BuildContext context) {
    const List<String> content = [
      'Read ',
      'free ',
      'books',
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        slidingAnimations.length,
        (i) => AnimatedBuilder(
          animation: slidingAnimations[i],
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimations[i],
              child: Text(
                content[i],
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }
}
