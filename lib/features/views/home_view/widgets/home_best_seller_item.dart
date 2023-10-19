import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/book_photo.dart';
import 'package:bookly_app/features/views/home_view/widgets/home_book_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBestSellerItem extends StatelessWidget {
  const HomeBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToBookDetailsView(context),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BookPhoto(
            width: 80,
            height: 100,
          ),
          SizedBox(width: 20),
          BookDetails(),
        ],
      ),
    );
  }

  void _navigateToBookDetailsView(BuildContext context) => context.go(AppRoutes.bookDetailsView);
}
