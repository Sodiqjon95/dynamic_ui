import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dynamic_ui/model/input_model.dart';

class ApiProvider {
  Future<List<InputModel>> getDynamicFields() async {
    var dio = Dio();
    try {
      Response response = await dio.get("https://dynamic-view-api.free.mockoapp.net/views");

      if (response.statusCode == HttpStatus.ok) {
        print(response.data);
        return (response.data["dynamic_views"] as List?)?.map((e) => InputModel.fromJson(e)).toList() ?? [];
      }
      return [];
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

}