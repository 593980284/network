import 'package:json_annotation/json_annotation.dart';
import "forecast.dart";
part 'my.g.dart';

@JsonSerializable()
class My {
    My();

    String city;
    String ganmao;
    List<Forecast> forecast;
    List<Forecast> forecast2;
    
    factory My.fromJson(Map<String,dynamic> json) => _$MyFromJson(json);
    Map<String, dynamic> toJson() => _$MyToJson(this);
}
