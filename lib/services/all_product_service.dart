import 'dart:convert';

import 'package:ecommerce/models/product.dart';
import 'package:http/http.dart' as http;


class AllProductService {
  Future<List<ProductModel>>getAllProducts()async{
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products')) ;
    List<dynamic> data =jsonDecode(response.body);
    List<ProductModel> products=[];
    for (var i = 0; i < data.length; i++) {
      products.add(data[i]);
    }
    return products;
  }
  
  
}