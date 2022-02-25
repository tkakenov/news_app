import 'package:flutter/material.dart';
import 'package:news_app/news_assets.dart';
import 'package:news_app/screens/news_styles/news_text_styles.dart';

class NewsBlockTitle extends Container {
  static Container newsBlock = Container(
    color: Colors.white,
    width: 320,
    height: 216,
    child: Column(
      children: [
        SizedBox(
          height: 156,
          child: Image(
            image: (NewsAssets.newsFoto1),
            fit: BoxFit.cover,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Незаконное строительство",
              style: NewsTextStyles.fontSize16W500Blue,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
              iconSize: 20,
            ),
          ],
        )
      ],
    ),
  );
}
