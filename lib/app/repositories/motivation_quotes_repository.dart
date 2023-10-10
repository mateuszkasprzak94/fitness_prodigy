import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';

class MotivationQuotesRepository {
  MotivationQuotesRepository(this._motivationQuotesRemoteDataSource);

  final MotivationQuotesRemoteDataSource _motivationQuotesRemoteDataSource;

  Future<QuoteModel?> getRandomQuote() async {
    final json = await _motivationQuotesRemoteDataSource.getQuoteData();

    if (json == null) {
      return null;
    }
// Generate a random index to pick a random quote
    final List<dynamic> quotesList = json['quotes'];
    final random = Random();
    final randomIndex = random.nextInt(quotesList.length);

    return QuoteModel.fromJson(quotesList[randomIndex]);
  }

  Stream<List<QuoteModel>> getMotivationStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return QuoteModel(
            id: doc.id,
            quote: doc['quote'],
            author: doc['author'],
          );
        },
      ).toList();
    });
  }
}
