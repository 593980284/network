import 'package:json_annotation/json_annotation.dart';
import "my.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
    User();

    String name;
    My my;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}
