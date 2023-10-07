class QuoteModel {
  QuoteModel({
    required this.quote,
    required this.author,
  });

  final String quote;
  final String author;

  QuoteModel.fromJson(Map<String, dynamic> json)
      : quote = json['quote'] ?? 'No quote available',
        author = json['author'] ?? 'Unknown author';
}
