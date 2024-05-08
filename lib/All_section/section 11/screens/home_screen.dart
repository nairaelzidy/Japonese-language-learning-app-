import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2011/component/category_items.dart';
import 'package:new_start_review2/All_section/section%2011/component/news_list_view.dart';

import '../component/category_listview.dart';
import '../component/newsListViewBuilder.dart';
import '../models/artical_model.dart';
import '../models/category_model.dart';
import '../service/NewsService.dart';

class HomeNewsScreen extends StatelessWidget {
 const  HomeNewsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            NewsListViewBuilder( category: 'general'),
          ],
        )
      ),
    );
  }
}


