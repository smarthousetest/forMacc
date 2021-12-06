import 'package:collections_page/cubit/api.dart';
import 'package:collections_page/cubit/card_model.dart';
//import 'package:collections_page/cubit/failure.dart';

import 'package:dartz/dartz.dart';

class CardRepository {
  CardApi cardApi = CardApi();
  Future<List<CardModel>> getAllCards() => cardApi.getCard();
}
