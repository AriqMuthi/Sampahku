import 'dart:convert';
import 'package:sampahku/helpers/user_info.dart';

import '../helpers/api.dart';
import '../helpers/api_url.dart';

class DeleteBloc {
  static Future delete() async {
    var id = await UserInfo().getUserID();
    String apiUrl = ApiUrl.deleteData(id);
    var response = await Api().delete(apiUrl);

    var jsonObj = json.decode(response.body);
    return jsonObj;
  }
}
