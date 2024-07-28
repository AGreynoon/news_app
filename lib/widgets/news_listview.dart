import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListview extends StatelessWidget {
  const NewsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: NewsTile(),
    );
  }
}
