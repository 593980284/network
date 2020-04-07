import 'package:dio/dio.dart';

Dio hc_dio = Dio(BaseOptions(
  baseUrl: "http://wthrcdn.etouch.cn/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));

void initDio() {
  addInterceptors();
  setHeaders({'header': '22'});
}

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
