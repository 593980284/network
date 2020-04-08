// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast()
    ..date = json['date'] as String
    ..high = json['high'] as String
    ..fengli = json['fengli'] as String
    ..low = json['low'] as String
    ..fengxiang = json['fengxiang'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'date': instance.date,
      'high': instance.high,
      'fengli': instance.fengli,
      'low': instance.low,
      'fengxiang': instance.fengxiang,
      'type': instance.type,
    };
