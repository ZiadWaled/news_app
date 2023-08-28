import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/get_news_model.dart';

class GetNewsRepo {
  Future<GetNewsModel?> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=apple&from=2023-08-27&to=2023-08-27&sortBy=popularity&apiKey=1ab7edb4f2064e6c973d9efcc4b47855"),
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
