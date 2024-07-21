import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});

  /*final List<Widget> cards = const [
    CategoryCard(title: 'General', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Business', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Entertaiment', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Health', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Science', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Sport', image: 'assets/technology.jpeg'),
    CategoryCard(title: 'Technology', image: 'assets/technology.jpeg'),
  ];*/

  final List<CategoryModel> categoriesList = const [
    CategoryModel(title: 'General', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Business', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Entertaiment', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Health', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Science', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Sport', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return CategoryCard(categories: categoriesList[index]);
          }),
    );
  }
}
