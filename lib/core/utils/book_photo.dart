import 'package:flutter/material.dart';

class BookPhoto extends StatelessWidget {
  const BookPhoto({super.key, this.height = double.infinity, this.width = 140});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const String src =
        'https://thumbs.dreamstime.com/b/grasmere-early-autumn-3391390.jpg';
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: const DecorationImage(image: NetworkImage(src))),
      // child: Image.network(src),
    );
  }
}
