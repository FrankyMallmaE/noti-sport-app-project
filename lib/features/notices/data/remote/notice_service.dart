import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:notisport_app/core/app_constants.dart';
import 'package:notisport_app/features/notices/data/remote/notice_dto.dart';

class NoticeService {
  Future<List<NoticeDto>> getNotices() async {
    String url = '${AppConstants.baseUrl}${AppConstants.topHeadlinesPath}?${AppConstants.countryUS}&${AppConstants.sportsCategory}&${AppConstants.apiKey}';

    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == HttpStatus.ok) {
        dynamic jsonResponse = jsonDecode(response.body);
        List maps = jsonResponse['articles'];
        return maps.map((json) => NoticeDto.fromJson(json)).toList();
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
