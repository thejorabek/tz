import 'package:dio/dio.dart';
import 'package:task/core/constants/constant.dart';
import 'package:task/data/models/time_model.dart';

class TimeRepository {
  Future<TimeModel> getTime() async {
    Response response = await Dio().get(Constants.url);

    if (response.statusCode == 200) {
      print(response.data);
      return response.data;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
