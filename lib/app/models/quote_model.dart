class QuoteModel {
  QuoteModel({
    required this.id,
    required this.quote,
    required this.author,
  });

  final String id;
  final String quote;
  final String author;

  QuoteModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        quote = json['quote'] ?? 'No quote available',
        author = json['author'] ?? 'Unknown author';

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'quote': quote,
  //     'author': author,
  //   };
  // }
}
