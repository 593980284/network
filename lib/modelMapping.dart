import './models/index.dart';

Map<String, Function> Models = {
  "My": (Map<String,dynamic> json){ return My.fromJson(json);},
  "Forecast": (Map<String,dynamic> json){ return Forecast.fromJson(json);},
};