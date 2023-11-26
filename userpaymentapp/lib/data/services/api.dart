import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:userpaymentapp/data/models/usermodel.dart';
    part 'api.g.dart';
class Apis = _ApisBase with _$Apis;

abstract class _ApisBase with Store {
  UserModel? userdata;

  Future<UserModel> GetUserData() async {
    final result = await http
        .get(Uri.parse('https://randomuser.me/api/?results=100&gender=male'));
    return UserModel.fromJson(jsonDecode(result.body));
  }
}
