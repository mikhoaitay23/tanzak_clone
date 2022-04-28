import 'dart:convert';

import 'package:http/http.dart';
import 'package:tanzak_clone/data/model/item_home.dart';

class HttpService {
  final String postUrl =
      'https://run.mocky.io/v3/c9b3dfb3-7a58-4006-9f13-da53134c57e3';

  Future<List<ItemHome>> getItemHome() async {
    Response res = await get(Uri.parse(postUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(res.body);
      List<dynamic> itemHomes = map['itemhome'];
      return itemHomes;
    } else {
      throw 'Unable to retrieve item home';
    }
  }
}
