import 'package:flutter/material.dart';
import 'package:notisport_app/core/date_time_utils.dart';
import 'package:notisport_app/features/notices/domain/notice.dart';

class NoticeItem extends StatelessWidget {
  const NoticeItem({super.key, required this.notice});
  final Notice notice;

  @override
  Widget build(BuildContext context) {
    final String authorText =
        "${notice.author != null && notice.author.isNotEmpty ? notice.author : 'Anónimo'}";
    final String publishedAt = '·${timeAgo(notice.publishedAt)}';
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notice.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        " ${notice.author != null && notice.author!.isNotEmpty ? (notice.author!.length > 30 ? '${notice.author!.substring(0, 30)}...' : notice.author) : 'Anonymous'}",
                        style: const TextStyle(fontSize: 13),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        publishedAt,
                        style: const TextStyle(
                            color: Color(0xFF808080), fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 1.0),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            SizedBox(
              width: 80,
              height: 80,
              child: Image.network(
                notice.urlToImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
