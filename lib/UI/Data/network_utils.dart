import 'dart:convert';
import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:http/http.dart';

class NetworkUtils {
  Future<dynamic> getMethod(String url, {VoidCallback? onUnAuthorize}) async {
    try {
      Uri uri = Uri.parse(url);
      final Response response = await get(uri, headers: {'token': ''});
      log(response.body);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        if (onUnAuthorize != null) {
          onUnAuthorize();
        }
      } else {
        log('Status code ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<dynamic> postMethod(String url,
      {VoidCallback? onUnAuthorize, Map<String, String>? body}) async {
    try {
      Uri uri = Uri.parse(url);
      final Response response = await post(uri,
          headers: {'Content_type': 'application/jason', 'token': ''},
          body: body);
      log(response.body);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        if (onUnAuthorize != null) {
          onUnAuthorize();
        }
      } else {
        log('Status code ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
