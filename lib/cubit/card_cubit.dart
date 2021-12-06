import 'package:collections_page/card_repositories.dart';
import 'package:collections_page/cubit/card_model.dart';
import 'package:collections_page/cubit/card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardCubit extends Cubit<CardState> {
  final CardRepository cardRepository;

  CardCubit(this.cardRepository) : super(CardLoadedState());

  Future<void> fetchCard() async {
    try {
      emit(CardLoadingState());
      final List<CardModel> _loaded = await cardRepository.getAllCards();
      print("приватная  $_loaded");
      emit(CardLoadedState(loadedCard: _loaded));
    } catch (_) {
      emit(CardErrorState());
    }
  }

  Future<void> clearCard() async {
    emit(CardEmptyState());
  }
}
