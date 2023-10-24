import 'package:json_annotation/json_annotation.dart';

part 'quote_model.g.dart';

@JsonSerializable()
class QuoteModel {
  QuoteModel({
    required this.id,
    required this.quote,
    required this.author,
  });

  final String id;

  final String quote;

  final String author;

  factory QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteModelToJson(this);

  // QuoteModel.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       quote = json['quote'] ?? 'No quote available',
  //       author = json['author'] ?? 'Unknown author';
}
