import 'package:news_app/models/article_source.dart';

class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;
  final String? publishedAt;
  final ArticleSource articleSource;

  ArticleModel(
      {this.image,
      required this.title,
      this.subtitle,
      required this.url,
      required this.publishedAt,
      required this.articleSource});

  factory ArticleModel.fromJson(article) {
    final source = ArticleSource.fromJson(article['source']);
    return ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description'],
      url: article['url'],
      publishedAt: article['publishedAt'],
      articleSource: source,
    );
  }
}
