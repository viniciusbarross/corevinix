abstract class IHttpAdapter {
  Future<dynamic> get(String uri, {headers});
  Future<dynamic> post(String uri, {headers, data});
  Future<dynamic> put(String uri, {headers, data});
  Future<dynamic> delete(String uri, {headers, data});
}
