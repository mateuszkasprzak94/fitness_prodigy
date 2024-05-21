import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';

class MotivationQuotesRepository {
  MotivationQuotesRepository({required this.motivationQuotesRemoteDataSource});

  final MotivationQuotesRemoteDioDataSource motivationQuotesRemoteDataSource;

  Future<QuoteModel?> getRandomQuote() async {
    final json = await motivationQuotesRemoteDataSource.getQuoteData();

    if (json == null) {
      return null;
    }
// Generate a random index to pick a random quote
    final List<dynamic> quotesList = json;
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
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          final quoteTimestamp = doc['timestamp'] as Timestamp?;
          return QuoteModel(
            doc.id,
            doc['quote'],
            doc['author'],
            quoteTimestamp != null ? quoteTimestamp.toDate() : DateTime.now(),
          );
        },
      ).toList();
    });
  }

  Future<void> add(QuoteModel quote) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .where('id', isEqualTo: quote.id)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // The document with the same id already exists
      throw Exception('Quote with the same id already in favorites');
    }

    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .add({
      'id': quote.id,
      'quote': quote.quote,
      'author': quote.author,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> delete({required String documentID}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .doc(documentID)
        .delete();
  }
}
