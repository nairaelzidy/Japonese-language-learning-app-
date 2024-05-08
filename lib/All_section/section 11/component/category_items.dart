import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2011/component/category_listview.dart';
import 'package:new_start_review2/All_section/section%2011/models/category_model.dart';
import 'package:new_start_review2/All_section/section%2011/screens/categoryView.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.image)),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
