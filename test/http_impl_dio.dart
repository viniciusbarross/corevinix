import 'package:corevinix/http_adapter.dart';
import 'package:dio/dio.dart';

class HttpDio implements IHttpAdapter {
  Dio dio = Dio();

  @override
  get(String uri, {headers}) async {
    final response = await dio.get(uri, options: Options(headers: headers));
    return response.data;
  }

  @override
  post(String uri, {headers, data}) async {
    final response =
        await dio.post(uri, options: Options(headers: headers), data: data);
    return response.data;
  }

  @override
  delete(String uri, {headers, data}) async {
    final response =
        await dio.delete(uri, options: Options(headers: headers), data: data);
    return response.data;
  }

  @override
  put(String uri, {headers, data}) async {
    final response =
        await dio.put(uri, options: Options(headers: headers), data: data);
    return response.data;
  }
}
