import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    required this.src,
  });
  final String src;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: CachedNetworkImage(
        imageUrl: src,
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider),
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
