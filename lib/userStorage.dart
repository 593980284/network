import 'package:mobx/mobx.dart';

part 'userStorage.g.dart';

class UserStorage = UserStorageBase with _$UserStorage;

// The store-class
abstract class UserStorageBase with Store {
  UserStorageBase() {
    print('初始化');
  }

  @observable
  String name = '111';

  @observable
  int num = 0;

  @action
  changeName() {
    name = "222";
    num++;
  }
}

UserStorage userStorage = UserStorage();
