// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

My _$MyFromJson(Map<String, dynamic> json) {
  return My()
    ..city = json['city'] as String
    ..ganmao = json['ganmao'] as String
    ..forecast = (json['forecast'] as List)
        ?.map((e) =>
            e == null ? null : Forecast.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..forecast2 = (json['forecast2'] as List)
        ?.map((e) =>
            e == null ? null : Forecast.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MyToJson(My instance) => <String, dynamic>{
      'city': instance.city,
      'ganmao': instance.ganmao,
      'forecast': instance.forecast,
      'forecast2': instance.forecast2
    };
