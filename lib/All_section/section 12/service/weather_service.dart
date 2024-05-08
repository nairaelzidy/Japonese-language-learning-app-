import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '3677bed892474b30b7a122242220806';

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}

class WeatherService2 {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '3677bed892474b30b7a122242220806';
  final Dio dio = Dio();

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel2 = WeatherModel.fromJson(response.data);
      return weatherModel2;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data["error"]["message"] ?? "oops there was an error";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("opps there was an error, try later");
    }
  }
}
