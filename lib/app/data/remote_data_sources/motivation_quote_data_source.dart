import 'package:dio/dio.dart';
import 'package:fitness_prodigy/app/core/config.dart';

class MotivationQuotesRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getQuoteData() async {
    final respone = await Dio().get<List<dynamic>>(Config.quoteUrl);
    final listDynamic = respone.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
