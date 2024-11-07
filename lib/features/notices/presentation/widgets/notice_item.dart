import 'package:flutter/material.dart';

class NoticeItem extends StatefulWidget {
  const NoticeItem({super.key});

  @override
  State<NoticeItem> createState() => _NoticeItemState();
}

class _NoticeItemState extends State<NoticeItem> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(

      child: Stack(
        children: [
          ClipRRect(

          ),
          Positioned(child: Stack(
            children: [
              Icon(Icons.circle,
              ),
              Positioned.fill(
                child: Center(
                  child: Text(),
                ))
            ],
          ))
        ],
      ),
    );
  }
}
