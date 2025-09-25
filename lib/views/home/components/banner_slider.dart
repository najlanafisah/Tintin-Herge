import 'package:flutter/material.dart';
import 'package:tintin_app/utils/consts.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 160),
      child: PageView(
        children: [
          _BannerImage(asset: "assets/images/banner1.png"),
          _BannerImage(asset: "assets/images/banner2.png"),
          _BannerImage(asset: "assets/images/banner3.png"),
          _BannerImage(asset: "assets/images/banner4.png"),
          _BannerImage(asset: "assets/images/banner5.png"),
          _BannerImage(asset: "assets/images/banner6.png"),
        ],
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  final String asset;

  const _BannerImage({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Image.asset(asset, fit: BoxFit.cover,),
    );
  }
}