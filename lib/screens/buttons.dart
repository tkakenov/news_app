import 'package:flutter/material.dart';

import 'news_styles/news_colors.dart';
import 'news_styles/news_text_styles.dart';

class NewsButton extends StatefulWidget {
  const NewsButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewsButton();
  }
}

class _NewsButton extends State<NewsButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text("Все"),
      style: OutlinedButton.styleFrom(
        textStyle: NewsTextStyles.fontSize14W400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        primary: const Color(0XFFFFFFFF),
        backgroundColor: NewsColors.buttomOn,
      ),
    );
  }
}
