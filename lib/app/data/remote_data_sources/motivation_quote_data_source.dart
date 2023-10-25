import 'package:dio/dio.dart';
// import 'package:fitness_prodigy/app/models/quote_model.dart';

// part 'motivation_quote_data_source.g.dart';

// @RestApi(
//     baseUrl: 'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/')
// abstract class MotivationQuotesRemoteRetrofitDataSource {
//   factory MotivationQuotesRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
//       _MotivationQuotesRemoteRetrofitDataSource;

//   @GET('/db')
//   Future<QuoteModel> getQuoteData();
// }

class MotivationQuotesRemoteDioDataSource {
  Future<Map<String, dynamic>?> getQuoteData() async {
    try {
      final respone = await Dio().get<Map<String, dynamic>>(
          'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/db');
      return respone.data;
    } on DioException catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown error');
    }
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
