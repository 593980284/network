import 'package:json_annotation/json_annotation.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
    Forecast();

    String date;
    String high;
    String fengli;
    String low;
    String fengxiang;
    String type;
    
    factory Forecast.fromJson(Map<String,dynamic> json) => _$ForecastFromJson(json);
    Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
