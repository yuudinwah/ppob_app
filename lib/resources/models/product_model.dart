class ProductModel {
  final String code;
  final String name;
  final String? operator;
  final int basePrice;
  final int sellPrice;
  final String? icon;

  const ProductModel(
    this.code, {
    required this.name,
    required this.basePrice,
    required this.sellPrice,
    this.icon,
    this.operator,
  });

  factory ProductModel.fromMap(Map<String, dynamic> value) {
    return ProductModel(value['pulsa_code'], //Code
        name: value['pulsa_nominal'], //Denom
        basePrice: value['pulsa_price'],
        sellPrice: value['pulsa_price'] + 200,
        operator: value['pulsa_op'],
        icon: value['icon_url']);
  }
}
