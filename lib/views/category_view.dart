import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListviewBuilder(
              categroy: category,
            ),
          ],
        ),
      ),
    );
  }
}
