import 'package:notisport_app/features/notices/domain/notice.dart';

class NoticeDto {
  final int id;
  final String name;
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  NoticeDto(
      {required this.id,
      required this.name,
      required this.author,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory NoticeDto.fromJson(Map<String, dynamic> json) {
  return NoticeDto(
    id: 0, 
    name: '', 
    author: json['author'] ?? '',
    title: json['title'] ?? '',
    description: json['description'] ?? '',
    urlToImage: json['urlToImage'] ?? '',
    publishedAt: json['publishedAt'] != null
        ? DateTime.parse(json['publishedAt'])
        : DateTime.now(),  
    content: json['content'] ?? '',
  );
}


  
  Notice toNotice() {
  return Notice(
    author: author,
    title: title,
    description: description,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content,
  );
}

}
