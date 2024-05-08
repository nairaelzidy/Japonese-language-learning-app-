// الطريقه الثانيه هي نفس الطريقه الاولي ولكن الطريقه الاولي دي افضل الان استخدام ال
//futureBuilder widget
// افضل لانها تنظم الكود
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../models/artical_model.dart';
// import '../service/NewsService.dart';
// import 'news_list_view.dart';
//
// class newsListViewBuilder extends StatefulWidget {
//   const newsListViewBuilder({
//     super.key,
//   });
//
//   @override
//   State<newsListViewBuilder> createState() => _newsListViewBuilderState();
// }
//
// class _newsListViewBuilderState extends State<newsListViewBuilder> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     getGeneralNews();
//     super.initState();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsService().getTopHeadlines();
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : articles.isNotEmpty
//             ? NewsListView(
//                 articles: articles,
//               )
//             : SliverToBoxAdapter(
//                 child: Text("opps there was an error"),
//               );
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/artical_model.dart';
import '../service/NewsService.dart';

import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}

