
import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future <List<dynamic>>getCategories()async{
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    List categoriesList = jsonDecode(response.body);
    return categoriesList;
  }
}