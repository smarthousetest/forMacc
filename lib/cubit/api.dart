import 'dart:convert';
import 'package:collections_page/cubit/card_model.dart';
import 'package:http/http.dart' as http;

class CardApi {
  Future<List<CardModel>> getCard() async {
    print("object");
    final response = await http.get(Uri.parse(
        'https://service-blogonomy.maksatlabs.ru/api/info/AboutCategories'));
    print("a");
    if (response.statusCode == 200) {
      final List<dynamic> cardJson = json.decode(response.body);
      return cardJson.map((json) => CardModel.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching users');
    }
  }
}
