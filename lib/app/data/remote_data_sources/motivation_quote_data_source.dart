import 'package:dio/dio.dart';

class MotivationQuotesRemoteDataSource {
  Future<Map<String, dynamic>?> getQuoteData() async {
    final respone = await Dio().get<Map<String, dynamic>>(
        'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/db');
    return respone.data;
  }
}

// class MotivationQuotesRemoteDioDataSource {
//   Future<List<Map<String, dynamic>>?> getQuoteData() async {
//     final respone = await Dio().get<List<dynamic>>(
//         'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/db');
//     final listDynamic = respone.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }
