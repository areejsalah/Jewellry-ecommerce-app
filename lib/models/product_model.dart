class ProductModel {
  String? image;
  String? name;
  double? price;
  bool isChecked;
  int? rating;
  ProductModel(
      {this.name, this.image, this.price, this.isChecked = false, this.rating});
}
