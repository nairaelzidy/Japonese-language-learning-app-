import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_items.dart';

class CategoryListView extends StatelessWidget {

  const CategoryListView({super.key});
  final List<CategoryModel> categories =const[
    CategoryModel(image: "assets/science.avif", categoryName:"Science" ),
    CategoryModel(image: "assets/th.jpeg", categoryName:"Business" ),
    CategoryModel(image: "assets/entertaiment.avif", categoryName:"Entertainment" ),
    CategoryModel(image: "assets/health.avif", categoryName:"Health" ),
    CategoryModel(image: "assets/technology.jpeg", categoryName:"Technology" ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length ,
          itemBuilder: (cotext, index) {
            return  CategoryItems(category:categories[index]);
          }),
    );
  }
}
