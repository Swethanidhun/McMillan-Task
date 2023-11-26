import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:userpaymentapp/data/models/usermodel.dart';
import 'package:userpaymentapp/data/services/api.dart';
part 'Homeviewmodel.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  final Apis _apis = Apis();
  @observable
  List<UserModel>? userData;
  @observable
  bool toggle = false;
  @action
  void istoggle() {
    toggle = !toggle;
  }

  TextEditingController pricecontroller = TextEditingController(text: "2500");
  TextEditingController visitorcontroller = TextEditingController();
  TextEditingController sponsercontroller = TextEditingController();

  @observable
  List<UserModel> userlist = List<UserModel>.empty(growable: true);
  @action
  Future<void> fetchUserData() async {
    userData = await _apis.getUserData();
    userlist = List<UserModel>.from(userData!);
    print(userlist[0].email);
  }

  _HomeStore() {
    fetchUserData();
  }
}
