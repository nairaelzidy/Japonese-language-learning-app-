import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2011/component/News_tile.dart';
import 'package:new_start_review2/All_section/section%2011/service/NewsService.dart';

import '../models/artical_model.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    super.key, required this.articles,
  });

 final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
