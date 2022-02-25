import 'package:flutter/material.dart';
import 'package:news_app/screens/news_logo/news_logo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NewsLogo());
  }
}
