class ProductModel {
  ProductModel({
    required this.rating,
    required this.id,
    required this.title,
    required this.desccription,
    required this.price,
    required this.category,
    required this.image,
    
  });

  final int id;
  final String title;
  final String desccription;
  final double price;
  final String category;
  final String image;
  final Rating rating;
   
  factory ProductModel.fromjson(jsonData){
    return ProductModel(rating: Rating.fromjson(jsonData["rating"]), id: jsonData["id"], title: jsonData["title"], desccription: jsonData["description"], price: jsonData["price"], category: jsonData["category"], image: jsonData["image"]);
  }
}

class Rating {
  Rating({required this.rate, required this.count});
  factory Rating.fromjson(jsonData){
    return Rating(rate: jsonData["rate"], count: jsonData["count"]);
  }
  final double rate;
  final int count;
}
