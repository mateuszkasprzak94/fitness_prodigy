import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';

part 'motivation_quotes_state.dart';

class MotivationQuotesCubit extends Cubit<MotivationQuotesState> {
  MotivationQuotesCubit(this._motivationQuotesRepository)
      : super(const MotivationQuotesState());

  final MotivationQuotesRepository _motivationQuotesRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      MotivationQuotesState(
        model: state.model,
        status: state.status,
        errorMessage: '',
        favoriteQuotes: [],
      ),
    );
    _streamSubscription = _motivationQuotesRepository
        .getMotivationStream()
        .listen((favoriteQuotes) {
      emit(MotivationQuotesState(favoriteQuotes: favoriteQuotes));
    })
      ..onError((error) {
        emit(
          MotivationQuotesState(
            favoriteQuotes: [],
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  Future<void> getRandomQuote() async {
    emit(const MotivationQuotesState(status: Status.loading));
    try {
      final quoteModel = await _motivationQuotesRepository.getRandomQuote();
      emit(MotivationQuotesState(model: quoteModel, status: Status.success));
    } catch (error) {
      emit(
        MotivationQuotesState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Stream<List<QuoteModel>> getMotivationStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('favoriteQuotes')
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

  Future<void> addQuoteToFavorites(QuoteModel quote) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .add({
      'quote': quote.quote,
      'author': quote.author,
    });
  }

  final List<QuoteModel> favoriteQuotes = [];

  Future<void> removeQuoteFromFavorites({required String documentID}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('quotes')
        .doc(documentID)
        .delete();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
