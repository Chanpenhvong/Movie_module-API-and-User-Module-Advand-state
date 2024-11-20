import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/item_model.dart';

class ItemService{
  static Future<ItemModel> readAPI() async {
    String url = "http://10.0.2.2/nuflutter2024/product.php";

    try {
      http.Response res = await http.get(Uri.parse(url));
      return compute(itemModelFromMap, res.body);
    } catch (e) {
      throw Exception("Error: ${e.toString()}");
    }
  }
}
