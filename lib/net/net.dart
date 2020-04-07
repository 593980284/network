import 'package:dio/dio.dart';

Dio hc_dio = Dio(BaseOptions(
  baseUrl: "http://wthrcdn.etouch.cn/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));

// int initDio() {
//   addInterceptors();
//   setHeaders({});
// print(111111111111);
//   return 0;
// }

//为了调用方法
// int ___initDio = initDio();

void setHeaders(Map<String, dynamic> headers) {
  hc_dio.options.headers = headers;
}

void addInterceptors() {
  print('addInterceptors');
  hc_dio.interceptors
      .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
    //添加header
    print(options.headers);
    return options;
  }, onResponse: (Response response) async {
    // print(response.toString());
    return response;
  }, onError: (DioError e) async {
    return e;
  }));
}
