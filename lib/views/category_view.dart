import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
