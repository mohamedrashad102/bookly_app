import 'package:bookly_app/features/views/home_view/widgets/home_featured_book_item.dart';
import 'package:flutter/material.dart';

class HomeFeaturedBookListView extends StatelessWidget {
  const HomeFeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        itemBuilder: (context, index) => const HomeFeaturedBookItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
