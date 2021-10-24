import 'dart:convert';

import 'package:call_api/model/api_model.dart';
import 'package:call_api/utils/api_base.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<ProductModel> fetchProduct(int pageSize, int pageIndex) async {
    var uri = Uri.parse(url +
        'api/products?PageSize=' +
        pageSize.toString() +
        '&PageIndex=' +
        pageIndex.toString());
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      print("Body: " + response.body);
      return ProductModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception();
    }
  }
}
