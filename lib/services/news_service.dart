import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  NewsService();

  Future<List<ArticleModel>> getTopHeadlines(
      [String category = 'general']) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=1df55cc515ba447aac7837ed8400f185');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (error) {
      return [];
    }
  }
}
