import 'dart:convert';

import 'package:ppob_app/commons/credentials/mp_credential.dart';
import 'package:ppob_app/resources/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductMiddleware {
  static Future<List<ProductModel>> getAll() async {
    List<ProductModel> result = [];
    Map<String, dynamic> body = {
      'commands': 'pricelist',
      'username': MPCredential.username,
      'sign': MPCredential.sign,
    };
    http.Response response = await http.post(
        Uri.parse('https://testprepaid.mobilepulsa.net/v1/legacy/index'),
        body: jsonEncode(body));
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
