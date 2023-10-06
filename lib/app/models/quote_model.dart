class QuoteModel {
  QuoteModel({
    required this.text,
    required this.author,
  });

  final String text;
  final String author;

  QuoteModel.fromJson(Map<String, dynamic> json)
      : text = json['quote']['text'],
        author = json['quote']['author'];
}
