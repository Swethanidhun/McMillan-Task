import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:userpaymentapp/data/models/usermodel.dart';
part 'api.g.dart';

class Apis = ApisBase with _$Apis;

abstract class ApisBase with Store {
  UserModel? userdata;

// Inside the Apis class
  Future<List<UserModel>> getUserData() async {
    final response = await http
        .get(Uri.parse('https://randomuser.me/api/?results=100&gender=male'));

    if (response.statusCode == 200) {
      final Map<dynamic, dynamic> data = jsonDecode(response.body);
      final Map<dynamic, dynamic> result = data;

      if (result.isNotEmpty) {
        return UserModel.listFromJson(data["results"]);
      } else {
        throw Exception('No user data found');
      }
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
