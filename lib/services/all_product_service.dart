
import 'package:ecommerce/helper/api.dart';
import 'package:ecommerce/models/product.dart';


class AllProductService {
  Future<List<ProductModel>>getAllProducts()async{
   List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products');
  List<ProductModel> products=[];
  for (var i = 0; i < data.length; i++) {
    products.add(ProductModel.fromjson(data[i]));
  }
  return products;
}
  

  
}