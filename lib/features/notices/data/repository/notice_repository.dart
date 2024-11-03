import 'package:notisport_app/features/notices/data/remote/notice_dto.dart';
import 'package:notisport_app/features/notices/data/remote/notice_service.dart';
import 'package:notisport_app/features/notices/domain/notice.dart';

class NoticeRepository {
  final NoticeService noticeService;
  NoticeRepository({required this.noticeService});

  Future<List<Notice>> getNotices() async {
    List<NoticeDto> noticesDto = await noticeService.getNotices();
    return noticesDto.map((noticeDto) => noticeDto.toNotice()).toList();
  }
}
