import 'dart:convert';

import 'package:ppob_app/resources/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductMiddleware {
  static Future<List<ProductModel>> getAll() async {
    List<ProductModel> result = [];

    http.Response response = await http.get(Uri.parse(
        'https://us-central1-lamun-my-id.cloudfunctions.net/development-pricelist-mobilepulsa'));
    if (response.statusCode != 200) {
      throw 'Gagal terhbung ke server';
    }
    Map<String, dynamic> data =
        jsonDecode(response.body) as Map<String, dynamic>;
    result = List.generate(
        data['data'].length,
        (index) =>
            ProductModel.fromMap(data['data'][index] as Map<String, dynamic>));

    return result;
  }
}
