import 'package:bookly_app/core/utils/assets.dart/my_assets.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MyAssets.logo,
      height: 50,
      width: 100,
    );
  }
}
