import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/article_webview_builder.dart';

class NewsCard extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsCard({required this.articleModel, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ArticleWebviewBuilder(article: articleModel.url)));
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: articleModel.image == null
                    ? Image.asset(
                        'assets/No-Image-Found.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Image.network(articleModel.image!)),
            const SizedBox(
              height: 12,
            ),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subtitle ?? '',
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(articleModel.publishedAt ?? 'unknown'),
            Text(articleModel.articleSource.name ?? 'unknown'),
            Text(articleModel.articleSource.author ?? 'unknown'),
          ],
        ),
      ),
    );
  }
}
