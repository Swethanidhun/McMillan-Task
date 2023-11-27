// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Homeviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStores, Store {
  late final _$_apisAtom = Atom(name: '_HomeStore._apis', context: context);

  @override
  Apis get _apis {
    _$_apisAtom.reportRead();
    return super._apis;
  }

  @override
  set _apis(Apis value) {
    _$_apisAtom.reportWrite(value, super._apis, () {
      super._apis = value;
    });
  }

  late final _$userDataAtom =
      Atom(name: '_HomeStore.userData', context: context);

  @override
  List<UserModel>? get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(List<UserModel>? value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  late final _$toggleAtom = Atom(name: '_HomeStore.toggle', context: context);

  @override
  bool get toggle {
    _$toggleAtom.reportRead();
    return super.toggle;
  }

  @override
  set toggle(bool value) {
    _$toggleAtom.reportWrite(value, super.toggle, () {
      super.toggle = value;
    });
  }

  late final _$successAtom = Atom(name: '_HomeStore.success', context: context);

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  late final _$selectedMethodAtom =
      Atom(name: '_HomeStore.selectedMethod', context: context);

  @override
  String get selectedMethod {
    _$selectedMethodAtom.reportRead();
    return super.selectedMethod;
  }

  @override
  set selectedMethod(String value) {
    _$selectedMethodAtom.reportWrite(value, super.selectedMethod, () {
      super.selectedMethod = value;
    });
  }

  late final _$itemCountAtom =
      Atom(name: '_HomeStore.itemCount', context: context);

  @override
  int get itemCount {
    _$itemCountAtom.reportRead();
    return super.itemCount;
  }

  @override
  set itemCount(int value) {
    _$itemCountAtom.reportWrite(value, super.itemCount, () {
      super.itemCount = value;
    });
  }

  late final _$userlistAtom =
      Atom(name: '_HomeStore.userlist', context: context);

  @override
  List<UserModel> get userlist {
    _$userlistAtom.reportRead();
    return super.userlist;
  }

  @override
  set userlist(List<UserModel> value) {
    _$userlistAtom.reportWrite(value, super.userlist, () {
      super.userlist = value;
    });
  }

  late final _$visitorlistAtom =
      Atom(name: '_HomeStore.visitorlist', context: context);

  @override
  List<VisitorData> get visitorlist {
    _$visitorlistAtom.reportRead();
    return super.visitorlist;
  }

  @override
  set visitorlist(List<VisitorData> value) {
    _$visitorlistAtom.reportWrite(value, super.visitorlist, () {
      super.visitorlist = value;
    });
  }

  late final _$paymentlistAtom =
      Atom(name: '_HomeStore.paymentlist', context: context);

  @override
  List<PaymentDetailsModel> get paymentlist {
    _$paymentlistAtom.reportRead();
    return super.paymentlist;
  }

  @override
  set paymentlist(List<PaymentDetailsModel> value) {
    _$paymentlistAtom.reportWrite(value, super.paymentlist, () {
      super.paymentlist = value;
    });
  }

  late final _$fetchUserDataAsyncAction =
      AsyncAction('_HomeStore.fetchUserData', context: context);

  @override
  Future<void> fetchUserData() {
    return _$fetchUserDataAsyncAction.run(() => super.fetchUserData());
  }

  late final _$initAsyncAction =
      AsyncAction('_HomeStore.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void istoggle() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.istoggle');
    try {
      return super.istoggle();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getPayMethod(String method) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.getPayMethod');
    try {
      return super.getPayMethod(method);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addVisitor() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.addVisitor');
    try {
      return super.addVisitor();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void payDetails(int index) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.payDetails');
    try {
      return super.payDetails(index);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userData: ${userData},
toggle: ${toggle},
success: ${success},
selectedMethod: ${selectedMethod},
itemCount: ${itemCount},
userlist: ${userlist},
visitorlist: ${visitorlist},
paymentlist: ${paymentlist}
    ''';
  }
}
