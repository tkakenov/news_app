import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/news_assets.dart';
import 'package:news_app/screens/news_styles/news_colors.dart';
import 'package:news_app/screens/news_styles/news_text_styles.dart';

class NewsBlock extends StatelessWidget {
  NewsBlock({Key? key}) : super(key: key);

  DateTime dateNow = DateTime.now();
  final formatter = DateFormat('dd.MM.yy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: NewsColors.backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Управление по контролю, надзору за водными ресурсами и объектами (далее УКНВРиО) 29 июля 2020 года провело рабочее видео-совещание.",
              style: NewsTextStyles.fontSize16W500Blue,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Дата: ${formatter.format(dateNow)}",
              style: NewsTextStyles.fontSize14W400LG,
            ),
            const SizedBox(
              height: 15,
            ),
            Image(image: NewsAssets.newsFoto1),
            const SizedBox(
              height: 15,
            ),
            Image(image: NewsAssets.newsFoto1),
          ],
        ),
      ),
    );
  }
}
