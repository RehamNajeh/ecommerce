import 'package:ecommerce/helper/api.dart';
import 'package:ecommerce/models/product.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String desccription,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": desccription,
        "image": image,
        "category": category,
      },
    );

    return ProductModel.fromjson(data);
  }
}
