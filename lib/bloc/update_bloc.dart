import 'dart:convert';

import 'package:sampahku/helpers/user_info.dart';
import 'package:sampahku/model/update.dart';

import '../helpers/api.dart';
import '../helpers/api_url.dart';

class UpdateBloc {
  static Future<Update> update(
      {String? nama, String? email, String? password}) async {
    var id = await UserInfo().getUserID();
    String apiUrl = ApiUrl.updateData(id);

    var body = {"nama": nama, "email": email, "password": password};

    var response = await Api().put(apiUrl, body);
    var jsonObj = json.decode(response.body);
    return Update.fromJson(jsonObj);
  }
}
