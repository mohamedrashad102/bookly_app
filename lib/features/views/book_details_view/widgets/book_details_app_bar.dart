import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).go(AppRoutes.homeView);
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
      ],
    );
  }
}
