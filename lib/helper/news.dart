import 'dart:convert';
import 'package:newsx_app/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:newsx_app/info.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=$API_KEY");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['author'] != null &&
            element['description'] != null &&
            element['content'] != null &&
            element['title'] != null &&
            element['url'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']);

          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=$category&country=in&category=business&apiKey=$API_KEY");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['author'] != null &&
            element['description'] != null &&
            element['content'] != null &&
            element['title'] != null &&
            element['url'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']);

          news.add(articleModel);
        }
      });
    }
  }
}
