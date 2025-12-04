
import 'package:ecommerce/helper/api.dart';
import 'package:ecommerce/models/product.dart';

class CategoryProductsService {
  Future<List<ProductModel>> getCategoryProduct({
    required String categoryName,
  }) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );

    List<ProductModel> products = [];
    for (var i = 0; i < data.length; i++) {
      products.add(ProductModel.fromjson(data[i]));
    }
    return products;
  }
}
