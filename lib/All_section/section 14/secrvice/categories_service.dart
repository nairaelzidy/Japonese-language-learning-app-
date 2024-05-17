import 'dart:convert';

import '../helper/API.dart';
import '../models/product_model.dart';
import 'package:http/http.dart'as http;
class CategoriesServices{}
Future<List<ProductModel>> getCategoriesProduct( {required String categoryNname}) async {
  List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryNname'
      );


    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]),
      );
    }
    return productList;

}