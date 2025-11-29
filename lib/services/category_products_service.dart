import 'dart:convert';

import 'package:ecommerce/models/product.dart';
import 'package:http/http.dart' as http;

class CategoryProductsService {
  Future <List<ProductModel>>getCategoryProduct({required String categoryName})async{
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (response.statusCode==200) {
  List<dynamic>data=jsonDecode(response.body);
  List<ProductModel>products=[];
  for (var i = 0; i < data.length; i++) {
    products.add(ProductModel.fromjson(data[i]));
  }
  return products;
}else{
  throw Exception('Error ${response.statusCode}');
}

  }
}