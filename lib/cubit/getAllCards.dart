import 'package:collections_page/card_repositories.dart';
//import 'package:collections_page/cubit/failure.dart';
import 'package:dartz/dartz.dart';

import 'card_model.dart';

class GettAllCards {
  final CardRepository cardRepository;

  GettAllCards(this.cardRepository);
  Future<List<CardModel>> getCardBy() async {
    return await cardRepository.getAllCards();
  }
}
