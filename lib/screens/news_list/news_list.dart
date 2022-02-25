import 'package:flutter/material.dart';
import 'package:news_app/screens/buttons.dart';
import 'package:news_app/screens/news_block/news_block.dart';
import 'package:news_app/screens/news_list/news_list_elements.dart';
import 'package:news_app/screens/news_styles/news_colors.dart';
import 'package:news_app/screens/news_styles/news_text_styles.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewsListState();
  }
}

class _NewsListState extends State<NewsList> {
  String? selectedValue;
  List<String> items = ["KG", "RU", "EN"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: NewsColors.backgroundColor,
        elevation: 0,
        title: const Text(
          "Новости",
          style: NewsTextStyles.fontSize20W700Black,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              icon: const Icon(Icons.language),
              iconEnabledColor: const Color(0xFF000000),
              iconSize: 33,
              underline: const SizedBox(),
              items: ["RU", "KG", "EN"].map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
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
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Интернет"),
                style: OutlinedButton.styleFrom(
                    textStyle: NewsTextStyles.fontSize14W400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    primary: const Color(0xFF000000).withOpacity(0.5),
                    backgroundColor: Colors.white),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsBlock(),
                    ),
                  );
                },
                child: const Text("Звонки"),
                style: OutlinedButton.styleFrom(
                    textStyle: NewsTextStyles.fontSize14W400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    primary: const Color(0xFF000000).withOpacity(0.5),
                    backgroundColor: Colors.white),
              ),
              const NewsButton(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          NewsBlockTitle.newsBlock,
          const SizedBox(
            height: 25,
          ),
          NewsBlockTitle.newsBlock
        ],
      ),
    );
  }
}
