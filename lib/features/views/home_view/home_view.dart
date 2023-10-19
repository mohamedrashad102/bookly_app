import 'package:bookly_app/features/views/home_view/widgets/home_best_seller_items.dart';
import 'package:flutter/material.dart';
import 'widgets/home_best_seller_text.dart';
import 'widgets/home_featured_book_list_view.dart';
import 'widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeAppBar(),
                    HomeFeaturedBookListView(),
                    SizedBox(height:50),
                    HomeBestSellerText(),
                    SizedBox(height: 20),
                  ],
                ),
              ), // row
              HomeBestSellerListView(), // vertical SliverList
            ],
          ),
        ),
      ),
    );
  }
}
