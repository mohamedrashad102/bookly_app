import 'package:flutter/material.dart';

class HomeFeaturedBookItem extends StatelessWidget {
  const HomeFeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    const String src =
        'https://thumbs.dreamstime.com/b/grasmere-early-autumn-3391390.jpg';
    return Container(
      width: 140,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: const DecorationImage(image: NetworkImage(src))),
      // child: Image.network(src),
    );
  }
}
