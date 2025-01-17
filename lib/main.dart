import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/screens/home_screen.dart';

void main() {
  //NewsService().getNews;
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
