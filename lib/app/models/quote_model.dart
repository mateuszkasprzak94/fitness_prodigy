class QuoteModel {
  QuoteModel({
    required this.text,
    required this.author,
  });

  final String text;
  final String author;

  QuoteModel.fromJson(Map<String, dynamic> json)
      : text = json['quotes']['text'],
        author = json['quotes']['author'];
}
