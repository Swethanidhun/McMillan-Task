import 'package:mobx/mobx.dart';
import 'package:userpaymentapp/data/models/usermodel.dart';
import 'package:userpaymentapp/data/services/api.dart';
part 'Homeviewmodel.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  final Apis _apis = Apis();
  @observable
  UserModel? userData;
  @observable
  bool toggle = false;
  @action
  void istoggle() {
    toggle = !toggle;
  }

  @action
  Future<void> fetchUserData() async {
    userData = await _apis.GetUserData();
  }
}
