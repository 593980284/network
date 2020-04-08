
import 'dart:convert';
///获取对象类型
String getTypeName(dynamic obj) {
  return obj.runtimeType.toString();
}

T jsonStringToJson<T>(String str){
  return json.decode(str);
}

String JsonToJsonString(dynamic map){
 return json.encode(map);
}
  
 