

import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  Dio dio = Dio();

 Future <List<ArticleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=82494ca3242949d7a2340288919a89e3&country=us&category=general');
    //بتحدد نوع المتغير على حسب البيانات اللي هترجع من الريسبونس
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    // list of objects
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      //convert list of maps to list of objects
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description']);
      // store abjects in the list
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
