import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helper/API.dart';
class AllCategoriesServices

{
  Future<List<dynamic>> getAllCategories()async{
    List<dynamic> data =await Api().get(url:"https://fakestoreapi.com/products/categories");

      return data;




  }
}