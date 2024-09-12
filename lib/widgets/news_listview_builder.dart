import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_listview.dart';

class NewsListviewBuilder extends StatefulWidget {
  final String categroy;
  const NewsListviewBuilder({required this.categroy, super.key});

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  NewsService newsService = NewsService();
  dynamic futureRequestedData;

  @override
  void initState() {
    super.initState();
    futureRequestedData = newsService.getTopHeadlines(widget.categroy);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futureRequestedData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('Opps, There Was An Error!!'),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
