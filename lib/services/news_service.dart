import 'package:dio/dio.dart';
import 'package:newsy/models/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=f98ac02969884aa6958fba8f9201e4e9&country=us&category=general');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articels = jsonData['articles'];

      List<ArticleModel> articalList = [];
      for (var articl in articels) {
        ArticleModel articleModel = ArticleModel(
            image: articl['urlToImage'],
            title: articl["title"],
            Subtitle: articl['description']);
        articalList.add(articleModel);
      }
      return articalList;
    } catch (e) {
      return []; 
    }
  }
}
