import 'package:flutter/material.dart';
import 'package:notisport_app/features/notices/data/remote/notice_service.dart';
import 'package:notisport_app/features/notices/data/repository/notice_repository.dart';
import 'package:notisport_app/features/notices/domain/notice.dart';
import 'package:notisport_app/features/notices/presentation/widgets/notice_item.dart';

class NoticeList extends StatefulWidget {
  const NoticeList({super.key});

  @override
  State<NoticeList> createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  List<Notice> _notices = [];

  Future<void> _loadData() async {
    List<Notice> notices =
        await NoticeRepository(noticeService: NoticeService()).getNotices();

    setState(() {
      _notices =
          notices.where((notice) => notice.urlToImage.isNotEmpty).toList();
    });
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _notices.length,
      itemBuilder: (context, index) => NoticeItem(notice: _notices[index]),
    );
  }
}
