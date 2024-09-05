import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});

  final List<CategoryModel> categoriesList = const [
    CategoryModel(
        title: 'General',
        image: 'assets/technology.jpeg',
        categoryName: 'general'),
    CategoryModel(
        title: 'Business',
        image: 'assets/technology.jpeg',
        categoryName: 'business'),
    CategoryModel(
        title: 'Entertaiment',
        image: 'assets/technology.jpeg',
        categoryName: 'entertainment'),
    CategoryModel(
        title: 'Health',
        image: 'assets/technology.jpeg',
        categoryName: 'health'),
    CategoryModel(
        title: 'Science',
        image: 'assets/technology.jpeg',
        categoryName: 'science'),
    CategoryModel(
        title: 'Sport', image: 'assets/technology.jpeg', categoryName: 'sport'),
    CategoryModel(
        title: 'Technology',
        image: 'assets/technology.jpeg',
        categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categoriesList[index]);
          }),
    );
  }
}
