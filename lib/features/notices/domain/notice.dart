class Notice {
  final int id;
  final String name;
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  Notice(
      {required this.id,
      required this.name,
      required this.author,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
}
