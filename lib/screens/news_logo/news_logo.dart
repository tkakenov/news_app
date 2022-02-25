import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/news_assets.dart';
import 'package:news_app/screens/news_list/news_list.dart';
import 'package:news_app/screens/news_styles/news_colors.dart';
import 'package:news_app/screens/news_styles/news_text_styles.dart';

class NewsLogo extends StatefulWidget {
  const NewsLogo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewsLogoState();
  }
}

class _NewsLogoState extends State<NewsLogo> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NewsList()),
      ),
    );

    return Scaffold(
      backgroundColor: NewsColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: (NewsAssets.newsLogo),
              height: 94,
              width: 94,
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              "Новости",
              style: NewsTextStyles.fontSize24W500,
            ),
          ],
        ),
      ),
    );
  }
}
