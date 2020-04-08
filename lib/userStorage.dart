import 'package:mobx/mobx.dart';
import 'package:network/net/netManager.dart';
import 'package:network/API.dart';
import 'package:network/utils/index.dart';
part 'userStorage.g.dart';

const String USERDATAKEY = 'hc_userdata_key';

class UserStorage = UserStorageBase with _$UserStorage;

// The store-class
abstract class UserStorageBase with Store {
  UserStorageBase() {}

  User user = User();

  @observable
  String name = '';

  @computed
  bool get isLogin => true;

  @action
  changeName() {
    user.name = "222";
    name = '222';
    saveToLocation();
  }

  @action
  getData() {
    NetRequest(API.weather, params: {'city': '沈阳'}).then((data) {
      if (data is Map) {
        data["name"] = data["city"];
        save(data);
      }
    });
  }

  @action
  save(Map<String, dynamic> data) {
    user = User.fromJson(data);
    setAttribute();
    saveToLocation();
  }

  //清除用户数据
  @action
  clean() {
    removeAttribute();
  }

/******************************** 下面为内部方法***********************************/
  setAttribute() {
    name = user.name;
  }

  removeAttribute() {
    user = User();
    name = '';
  }

  //保存数据到本地
  saveToLocation() {
    SpUtil.shared.putString(USERDATAKEY, JsonToJsonString(user.toJson()));
  }

  //从本地取数据
  @action
  getFromLocation() async {
    String string = await SpUtil.shared.getString(USERDATAKEY);
    if (string != null && string.length > 0) {
      user = User.fromJson(jsonStringToJson<Map<String, dynamic>>(string));
      setAttribute();
    }
  }
}

UserStorage userStorage = UserStorage()..getFromLocation();
