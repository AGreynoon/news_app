import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListview extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListview({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: NewsTile(articleModel: articles[index]),
        );
      }),
    );
  }
}
