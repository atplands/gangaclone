import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/news_model.dart';
import 'constants.dart';

// ignore: camel_case_types
class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Uri.parse(Strings.news_url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        try {
          newsModel = NewsModel.fromJson(jsonMap);
        }catch(e){
          print(e);
        }
      }
    } catch (Exception) {
      print(Exception.toString());
      return newsModel;
    }

    return newsModel;
  }
}