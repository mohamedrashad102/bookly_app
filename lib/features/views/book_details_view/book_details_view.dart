import 'package:flutter/material.dart';

import '../../../core/utils/book__rate.dart';
import '../../../core/utils/book_author.dart';
import '../../../core/utils/book_photo.dart';
import '../../../core/utils/book_title.dart';
import 'widgets/book_details_app_bar.dart';
import 'widgets/book_details_free_preview_card.dart';
import 'widgets/book_details_list_view.dart';
import 'widgets/book_details_you_can_also_like_text.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BookDetailsAppBar(),
                SizedBox(height: 30),
                BookPhoto(),
                SizedBox(height: 50),
                BookTitle(),
                SizedBox(height: 10),
                BookAuthor(),
                SizedBox(height: 15),
                BookRate(),
                SizedBox(height: 40),
                BookDetailsFreePreviewCard(),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.centerLeft, 
                  child: BookDetailsYouCanAlsoLikeText()),
                SizedBox(height: 10),
                BookDetailsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
