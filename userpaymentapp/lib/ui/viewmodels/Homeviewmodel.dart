import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:userpaymentapp/data/models/paymentmodel.dart';
import 'package:userpaymentapp/data/models/usermodel.dart';
import 'package:userpaymentapp/data/models/visitormodel.dart';
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
  @observable
  bool success = false;
  @observable
  String selectedMethod = "";
  @observable
  int itemCount = 0;
  @action
  void istoggle() {
    toggle = !toggle;
  }

  TextEditingController pricecontroller = TextEditingController(text: "2500");
  TextEditingController visitorcontroller = TextEditingController();
  TextEditingController sponsercontroller = TextEditingController();

  @observable
  List<UserModel> userlist =
      List<UserModel>.empty(growable: true).asObservable();
  @action
  void getPayMethod(String method) {
    if (toggle) {
      selectedMethod = method;
      print(selectedMethod);
    }
  }

  @action
  Future<void> fetchUserData() async {
    try {
      userData = await _apis.getUserData();
      userlist = List<UserModel>.from(userData!);
      itemCount = userlist.length;
      print(userlist[0].email);
    } catch (e) {
      print("error in fetching user data $e");
    }
  }

  @observable
  List<VisitorData> visitorlist =  List<VisitorData>.empty(growable: true).asObservable();
  @action
  void addVisitor() {
    final visitor = visitorcontroller.text;
    final sponser = sponsercontroller.text;
    final data = VisitorData(
      visitorname: visitor,
      sponsername: sponser,
    );
    visitorlist.add(data);
    print(visitorlist.first.sponsername);
    visitorcontroller.clear();
    sponsercontroller.clear();
  }

@observable
List<PaymentDetailsModel> paymentlist =  List<PaymentDetailsModel>.empty(growable: true).asObservable();

@action
void payDetails(int index){
  final paymethod = selectedMethod;
  final name = userlist[index].name!.first;
  final price = pricecontroller.text;
  final data = PaymentDetailsModel(method: paymethod,name: name.toString(),price: price,time: DateTime.now());
  paymentlist.add(data);
  print(paymentlist.first.name);
  
}





  @action
  _HomeStore() {
    init();
  }

  @action
  Future<void> init() async {
    await fetchUserData();
  }
}
