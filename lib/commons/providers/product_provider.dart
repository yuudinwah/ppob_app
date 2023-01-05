import 'package:flutter/foundation.dart';
import 'package:ppob_app/resources/middlewares/product_middleware.dart';
import 'package:ppob_app/resources/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  bool isInit = false;
  bool load = false;
  late List<ProductModel> products;

  Future<void> initialize() async {
    if (!isInit) {
      products = await ProductMiddleware.getAll();
    }
    isInit = true;
    refresh();
  }

  Future<void> refreshProduct() async {
    load = true;
    refresh();
    products = await ProductMiddleware.getAll();
    load = false;
    refresh();
  }

  void refresh() => notifyListeners();
}
