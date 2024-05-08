import 'package:dio/dio.dart';
import 'package:new_start_review2/All_section/section%2011/models/artical_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try{
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=79cafaeeb08b47a79475e10892271b19&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          // source: Source(id: article["source"]["id"], name: article["source"]["name"]) ,
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articleList.add(articleModel);
      }
      return articleList;
    }
    catch(e){
     return[];
    }
  }
}
