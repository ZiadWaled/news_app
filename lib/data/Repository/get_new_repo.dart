import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/get_news_model.dart';

class GetNewsRepo {
  Future<GetNewsModel?> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=messi&from=2023-07-27&sortBy=publishedAt&apiKey=7c07f0c86d484b30a5af1289c531cff1"),
      );

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        GetNewsModel myResponse = GetNewsModel.fromJson(decodedResponse);

        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
