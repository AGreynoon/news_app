class ArticleSource {
  final String? id;
  final String? name;
  final String? author;

  ArticleSource({required this.id, required this.name, required this.author});

  factory ArticleSource.fromJson(source) {
    return ArticleSource(
      id: source['id'],
      name: source['name'],
      author: source['author'],
    );
  }
}
