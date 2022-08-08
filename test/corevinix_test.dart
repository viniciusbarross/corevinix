import 'dart:convert';
import 'dart:math';

import 'package:corevinix/http_adapter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:corevinix/corevinix.dart';

import 'consts.dart';
import 'entitieusermock.dart';
import 'http_impl_dio.dart';

void main() {
  IHttpAdapter http = HttpDio();

  UserMock userMock = UserMock.fromJson(
      {"usuario": "vinicius", "email": "vinicius@gmail.com", "idade": 29});

  test('Faz requisicao url mocada gist git', () async {
    final response = await http.get(url_usuario);
    final user = UserMock.fromJson(jsonDecode(response));
    expect(user.email, userMock.email);
  });
}
