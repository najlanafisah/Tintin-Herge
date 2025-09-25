import 'package:flutter/material.dart';
import 'package:tintin_app/utils/consts.dart';
import 'package:tintin_app/utils/size_config.dart';


class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.text, required this.image, required this.title});

  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Spacer(), // pake spacer agar ga bolak2 pake SizedBox, dan juga bisa beradaptasi di berbagai device
        Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: getProporsionateScreenHeight(24),
            fontWeight: FontWeight.bold // buat menjadi adaptif agar bisa responsive dengan berbagai device
          ),
        ),
        SizedBox(height: 15),
        Text(
          text,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}