import 'package:dio/dio.dart';

class MotivationQuotesRemoteDataSource {
  Future<Map<String, dynamic>?> getQuoteData() async {
    final respone = await Dio().get<Map<String, dynamic>>(
        'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/db');
    return respone.data;
  }
}
